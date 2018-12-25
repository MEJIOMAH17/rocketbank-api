package android.support.v7.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.AsyncTask;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.util.SparseBooleanArray;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class Palette {
    static final Filter DEFAULT_FILTER = new C09441();
    private final Swatch mDominantSwatch = findDominantSwatch();
    private final Map<Target, Swatch> mSelectedSwatches = new ArrayMap();
    private final List<Swatch> mSwatches;
    private final List<Target> mTargets;
    private final SparseBooleanArray mUsedColors = new SparseBooleanArray();

    public static final class Builder {
        private final Bitmap mBitmap;
        private final List<Filter> mFilters = new ArrayList();
        private int mMaxColors = 16;
        private int mResizeArea = 12544;
        private int mResizeMaxDimension = -1;
        private final List<Swatch> mSwatches;
        private final List<Target> mTargets = new ArrayList();

        public Builder(Bitmap bitmap) {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    this.mFilters.add(Palette.DEFAULT_FILTER);
                    this.mBitmap = bitmap;
                    this.mSwatches = null;
                    this.mTargets.add(Target.LIGHT_VIBRANT);
                    this.mTargets.add(Target.VIBRANT);
                    this.mTargets.add(Target.DARK_VIBRANT);
                    this.mTargets.add(Target.LIGHT_MUTED);
                    this.mTargets.add(Target.MUTED);
                    this.mTargets.add(Target.DARK_MUTED);
                    return;
                }
            }
            throw new IllegalArgumentException("Bitmap is not valid");
        }

        public final Builder clearFilters() {
            this.mFilters.clear();
            return this;
        }

        public final Palette generate() {
            List list = null;
            if (this.mBitmap != null) {
                Filter[] filterArr;
                Bitmap bitmap = this.mBitmap;
                double d = -1.0d;
                int width;
                if (this.mResizeArea > 0) {
                    width = bitmap.getWidth() * bitmap.getHeight();
                    if (width > this.mResizeArea) {
                        d = Math.sqrt(((double) this.mResizeArea) / ((double) width));
                    }
                } else if (this.mResizeMaxDimension > 0) {
                    width = Math.max(bitmap.getWidth(), bitmap.getHeight());
                    if (width > this.mResizeMaxDimension) {
                        d = ((double) this.mResizeMaxDimension) / ((double) width);
                    }
                }
                if (d > 0.0d) {
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * d), (int) Math.ceil(((double) bitmap.getHeight()) * d), false);
                }
                int width2 = bitmap.getWidth();
                int height = bitmap.getHeight();
                int[] iArr = new int[(width2 * height)];
                bitmap.getPixels(iArr, 0, width2, 0, 0, width2, height);
                int i = this.mMaxColors;
                if (!this.mFilters.isEmpty()) {
                    filterArr = (Filter[]) this.mFilters.toArray(new Filter[this.mFilters.size()]);
                }
                ColorCutQuantizer colorCutQuantizer = new ColorCutQuantizer(iArr, i, filterArr);
                if (bitmap != this.mBitmap) {
                    bitmap.recycle();
                }
                list = colorCutQuantizer.mQuantizedColors;
            }
            Palette palette = new Palette(list, this.mTargets);
            palette.generate();
            return palette;
        }

        public final AsyncTask<Bitmap, Void, Palette> generate(final PaletteAsyncListener paletteAsyncListener) {
            return new AsyncTask<Bitmap, Void, Palette>() {
                protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
                    return doInBackground$5fa9bc7a();
                }

                protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
                    paletteAsyncListener.onGenerated((Palette) obj);
                }

                private Palette doInBackground$5fa9bc7a() {
                    try {
                        return Builder.this.generate();
                    } catch (Throwable e) {
                        Log.e("Palette", "Exception thrown during async generate", e);
                        return null;
                    }
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Bitmap[]{this.mBitmap});
        }
    }

    public interface Filter {
        boolean isAllowed$4870f67d(float[] fArr);
    }

    public interface PaletteAsyncListener {
        void onGenerated(Palette palette);
    }

    public static final class Swatch {
        private final int mBlue;
        private int mBodyTextColor;
        private boolean mGeneratedTextColors;
        private final int mGreen;
        private float[] mHsl;
        private final int mPopulation;
        private final int mRed;
        private final int mRgb;
        private int mTitleTextColor;

        public Swatch(int i, int i2) {
            this.mRed = Color.red(i);
            this.mGreen = Color.green(i);
            this.mBlue = Color.blue(i);
            this.mRgb = i;
            this.mPopulation = i2;
        }

        public final int getRgb() {
            return this.mRgb;
        }

        public final float[] getHsl() {
            if (this.mHsl == null) {
                this.mHsl = new float[3];
            }
            ColorUtils.RGBToHSL(this.mRed, this.mGreen, this.mBlue, this.mHsl);
            return this.mHsl;
        }

        public final int getPopulation() {
            return this.mPopulation;
        }

        public final int getTitleTextColor() {
            ensureTextColorsGenerated();
            return this.mTitleTextColor;
        }

        private void ensureTextColorsGenerated() {
            if (!this.mGeneratedTextColors) {
                int calculateMinimumAlpha = ColorUtils.calculateMinimumAlpha(-1, this.mRgb, 4.5f);
                int calculateMinimumAlpha2 = ColorUtils.calculateMinimumAlpha(-1, this.mRgb, 3.0f);
                if (calculateMinimumAlpha == -1 || calculateMinimumAlpha2 == -1) {
                    int calculateMinimumAlpha3 = ColorUtils.calculateMinimumAlpha(ViewCompat.MEASURED_STATE_MASK, this.mRgb, 4.5f);
                    int calculateMinimumAlpha4 = ColorUtils.calculateMinimumAlpha(ViewCompat.MEASURED_STATE_MASK, this.mRgb, 3.0f);
                    if (calculateMinimumAlpha3 == -1 || calculateMinimumAlpha4 == -1) {
                        if (calculateMinimumAlpha != -1) {
                            calculateMinimumAlpha = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha);
                        } else {
                            calculateMinimumAlpha = ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha3);
                        }
                        this.mBodyTextColor = calculateMinimumAlpha;
                        if (calculateMinimumAlpha2 != -1) {
                            calculateMinimumAlpha = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2);
                        } else {
                            calculateMinimumAlpha = ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha4);
                        }
                        this.mTitleTextColor = calculateMinimumAlpha;
                        this.mGeneratedTextColors = true;
                    } else {
                        this.mBodyTextColor = ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha3);
                        this.mTitleTextColor = ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha4);
                        this.mGeneratedTextColors = true;
                        return;
                    }
                }
                this.mBodyTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha);
                this.mTitleTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2);
                this.mGeneratedTextColors = true;
            }
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder(getClass().getSimpleName());
            stringBuilder.append(" [RGB: #");
            stringBuilder.append(Integer.toHexString(this.mRgb));
            stringBuilder.append(']');
            stringBuilder.append(" [HSL: ");
            stringBuilder.append(Arrays.toString(getHsl()));
            stringBuilder.append(']');
            stringBuilder.append(" [Population: ");
            stringBuilder.append(this.mPopulation);
            stringBuilder.append(']');
            stringBuilder.append(" [Title Text: #");
            ensureTextColorsGenerated();
            stringBuilder.append(Integer.toHexString(this.mTitleTextColor));
            stringBuilder.append(']');
            stringBuilder.append(" [Body Text: #");
            ensureTextColorsGenerated();
            stringBuilder.append(Integer.toHexString(this.mBodyTextColor));
            stringBuilder.append(']');
            return stringBuilder.toString();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null) {
                if (getClass() == obj.getClass()) {
                    Swatch swatch = (Swatch) obj;
                    return this.mPopulation == swatch.mPopulation && this.mRgb == swatch.mRgb;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (31 * this.mRgb) + this.mPopulation;
        }
    }

    /* renamed from: android.support.v7.graphics.Palette$1 */
    static class C09441 implements Filter {
        C09441() {
        }

        public final boolean isAllowed$4870f67d(float[] fArr) {
            if (!(fArr[2] >= 0.95f)) {
                if (!(fArr[2] <= 0.05f)) {
                    fArr = (fArr[0] < 10.0f || fArr[0] > 37.0f || fArr[1] > 0.82f) ? null : 1;
                    if (fArr == null) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static Builder from(Bitmap bitmap) {
        return new Builder(bitmap);
    }

    Palette(List<Swatch> list, List<Target> list2) {
        this.mSwatches = list;
        this.mTargets = list2;
    }

    public final Swatch getVibrantSwatch() {
        return (Swatch) this.mSelectedSwatches.get(Target.VIBRANT);
    }

    public final Swatch getLightVibrantSwatch() {
        return (Swatch) this.mSelectedSwatches.get(Target.LIGHT_VIBRANT);
    }

    public final Swatch getDarkVibrantSwatch() {
        return (Swatch) this.mSelectedSwatches.get(Target.DARK_VIBRANT);
    }

    public final Swatch getMutedSwatch() {
        return (Swatch) this.mSelectedSwatches.get(Target.MUTED);
    }

    public final Swatch getLightMutedSwatch() {
        return (Swatch) this.mSelectedSwatches.get(Target.LIGHT_MUTED);
    }

    public final Swatch getDarkMutedSwatch() {
        return (Swatch) this.mSelectedSwatches.get(Target.DARK_MUTED);
    }

    public final Swatch getDominantSwatch() {
        return this.mDominantSwatch;
    }

    final void generate() {
        int size = this.mTargets.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            int i3;
            Target target = (Target) r0.mTargets.get(i2);
            float f = BitmapDescriptorFactory.HUE_RED;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            for (i3 = i; i3 < 3; i3++) {
                float f3 = target.mWeights[i3];
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    f2 += f3;
                }
            }
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                for (i3 = i; i3 < 3; i3++) {
                    if (target.mWeights[i3] > BitmapDescriptorFactory.HUE_RED) {
                        float[] fArr = target.mWeights;
                        fArr[i3] = fArr[i3] / f2;
                    }
                }
            }
            Map map = r0.mSelectedSwatches;
            int size2 = r0.mSwatches.size();
            float f4 = BitmapDescriptorFactory.HUE_RED;
            Swatch swatch = null;
            int i4 = i;
            while (i4 < size2) {
                float f5;
                Swatch swatch2 = (Swatch) r0.mSwatches.get(i4);
                float[] hsl = swatch2.getHsl();
                int i5 = (hsl[1] < target.mSaturationTargets[i] || hsl[1] > target.mSaturationTargets[2] || hsl[2] < target.mLightnessTargets[i] || hsl[2] > target.mLightnessTargets[2] || r0.mUsedColors.get(swatch2.getRgb())) ? i : 1;
                if (i5 != 0) {
                    int i6;
                    float abs;
                    float[] hsl2 = swatch2.getHsl();
                    int population = r0.mDominantSwatch != null ? r0.mDominantSwatch.getPopulation() : 1;
                    if (target.mWeights[i] > f) {
                        i6 = 1;
                        abs = (1.0f - Math.abs(hsl2[1] - target.mSaturationTargets[1])) * target.mWeights[i];
                    } else {
                        i6 = 1;
                        abs = f;
                    }
                    f = target.mWeights[i6] > f ? target.mWeights[i6] * (1.0f - Math.abs(hsl2[2] - target.mLightnessTargets[i6])) : BitmapDescriptorFactory.HUE_RED;
                    float f6 = target.mWeights[2];
                    f5 = BitmapDescriptorFactory.HUE_RED;
                    abs = (abs + f) + (f6 > BitmapDescriptorFactory.HUE_RED ? target.mWeights[2] * (((float) swatch2.getPopulation()) / ((float) population)) : BitmapDescriptorFactory.HUE_RED);
                    if (swatch == null || abs > r10) {
                        f4 = abs;
                        swatch = swatch2;
                    }
                } else {
                    f5 = f;
                }
                i4++;
                f = f5;
                i = 0;
            }
            if (swatch != null && target.mIsExclusive) {
                r0.mUsedColors.append(swatch.getRgb(), true);
            }
            map.put(target, swatch);
            i2++;
            i = 0;
        }
        r0.mUsedColors.clear();
    }

    private Swatch findDominantSwatch() {
        int size = this.mSwatches.size();
        int i = Integer.MIN_VALUE;
        Swatch swatch = null;
        for (int i2 = 0; i2 < size; i2++) {
            Swatch swatch2 = (Swatch) this.mSwatches.get(i2);
            if (swatch2.getPopulation() > i) {
                i = swatch2.getPopulation();
                swatch = swatch2;
            }
        }
        return swatch;
    }
}
