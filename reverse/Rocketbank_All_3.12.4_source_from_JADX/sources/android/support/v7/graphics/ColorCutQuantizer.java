package android.support.v7.graphics;

import android.graphics.Color;
import android.support.v4.graphics.ColorUtils;
import android.support.v7.graphics.Palette.Filter;
import android.support.v7.graphics.Palette.Swatch;
import android.util.TimingLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

final class ColorCutQuantizer {
    private static final Comparator<Vbox> VBOX_COMPARATOR_VOLUME = new C02201();
    final int[] mColors;
    final Filter[] mFilters;
    final int[] mHistogram;
    final List<Swatch> mQuantizedColors;
    private final float[] mTempHsl = new float[3];
    final TimingLogger mTimingLogger = null;

    /* renamed from: android.support.v7.graphics.ColorCutQuantizer$1 */
    static class C02201 implements Comparator<Vbox> {
        C02201() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            return ((Vbox) obj2).getVolume() - ((Vbox) obj).getVolume();
        }
    }

    class Vbox {
        private int mLowerIndex;
        private int mMaxBlue;
        private int mMaxGreen;
        private int mMaxRed;
        private int mMinBlue;
        private int mMinGreen;
        private int mMinRed;
        private int mPopulation;
        private int mUpperIndex;

        Vbox(int i, int i2) {
            this.mLowerIndex = i;
            this.mUpperIndex = i2;
            fitBox();
        }

        final int getVolume() {
            return (((this.mMaxRed - this.mMinRed) + 1) * ((this.mMaxGreen - this.mMinGreen) + 1)) * ((this.mMaxBlue - this.mMinBlue) + 1);
        }

        private void fitBox() {
            int[] iArr = ColorCutQuantizer.this.mColors;
            int[] iArr2 = ColorCutQuantizer.this.mHistogram;
            int i = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            int i4 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int i5 = i4;
            int i6 = Integer.MIN_VALUE;
            int i7 = i6;
            for (int i8 = this.mLowerIndex; i8 <= this.mUpperIndex; i8++) {
                int i9 = iArr[i8];
                i3 += iArr2[i9];
                int quantizedRed = ColorCutQuantizer.quantizedRed(i9);
                int quantizedGreen = ColorCutQuantizer.quantizedGreen(i9);
                i9 = ColorCutQuantizer.quantizedBlue(i9);
                if (quantizedRed > i2) {
                    i2 = quantizedRed;
                }
                if (quantizedRed < i) {
                    i = quantizedRed;
                }
                if (quantizedGreen > i6) {
                    i6 = quantizedGreen;
                }
                if (quantizedGreen < i4) {
                    i4 = quantizedGreen;
                }
                if (i9 > i7) {
                    i7 = i9;
                }
                if (i9 < i5) {
                    i5 = i9;
                }
            }
            this.mMinRed = i;
            this.mMaxRed = i2;
            this.mMinGreen = i4;
            this.mMaxGreen = i6;
            this.mMinBlue = i5;
            this.mMaxBlue = i7;
            this.mPopulation = i3;
        }

        final Swatch getAverageColor() {
            int[] iArr = ColorCutQuantizer.this.mColors;
            int[] iArr2 = ColorCutQuantizer.this.mHistogram;
            int i = 0;
            int i2 = 0;
            int i3 = i2;
            int i4 = i3;
            for (int i5 = this.mLowerIndex; i5 <= this.mUpperIndex; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr2[i6];
                i += i7;
                i2 += ColorCutQuantizer.quantizedRed(i6) * i7;
                i3 += ColorCutQuantizer.quantizedGreen(i6) * i7;
                i4 += i7 * ColorCutQuantizer.quantizedBlue(i6);
            }
            float f = (float) i;
            return new Swatch(ColorCutQuantizer.approximateToRgb888(Math.round(((float) i2) / f), Math.round(((float) i3) / f), Math.round(((float) i4) / f)), i);
        }

        final boolean canSplit() {
            return (this.mUpperIndex + 1) - this.mLowerIndex > 1;
        }

        final Vbox splitBox() {
            int i = 1;
            if ((this.mUpperIndex + 1) - this.mLowerIndex <= 1) {
                i = 0;
            }
            if (i == 0) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int findSplitPoint = findSplitPoint();
            Vbox vbox = new Vbox(findSplitPoint + 1, this.mUpperIndex);
            this.mUpperIndex = findSplitPoint;
            fitBox();
            return vbox;
        }

        private int findSplitPoint() {
            int i = this.mMaxRed - this.mMinRed;
            int i2 = this.mMaxGreen - this.mMinGreen;
            int i3 = this.mMaxBlue - this.mMinBlue;
            i = (i < i2 || i < i3) ? (i2 < i || i2 < i3) ? -1 : -2 : -3;
            int[] iArr = ColorCutQuantizer.this.mColors;
            int[] iArr2 = ColorCutQuantizer.this.mHistogram;
            ColorCutQuantizer.modifySignificantOctet(iArr, i, this.mLowerIndex, this.mUpperIndex);
            Arrays.sort(iArr, this.mLowerIndex, this.mUpperIndex + 1);
            ColorCutQuantizer.modifySignificantOctet(iArr, i, this.mLowerIndex, this.mUpperIndex);
            i = this.mPopulation / 2;
            int i4 = 0;
            for (int i5 = this.mLowerIndex; i5 <= this.mUpperIndex; i5++) {
                i4 += iArr2[iArr[i5]];
                if (i4 >= i) {
                    return Math.min(this.mUpperIndex - 1, i5);
                }
            }
            return this.mLowerIndex;
        }
    }

    static int quantizedBlue(int i) {
        return i & 31;
    }

    static int quantizedGreen(int i) {
        return (i >> 5) & 31;
    }

    static int quantizedRed(int i) {
        return (i >> 10) & 31;
    }

    ColorCutQuantizer(int[] iArr, int i, Filter[] filterArr) {
        int i2;
        int i3;
        this.mFilters = filterArr;
        int[] iArr2 = new int[32768];
        this.mHistogram = iArr2;
        int i4 = 0;
        for (i2 = 0; i2 < iArr.length; i2++) {
            i3 = iArr[i2];
            i3 = ((Color.blue(i3) >> 3) & 31) | ((((Color.red(i3) >> 3) & 31) << 10) | (((Color.green(i3) >> 3) & 31) << 5));
            iArr[i2] = i3;
            iArr2[i3] = iArr2[i3] + 1;
        }
        iArr = null;
        i2 = iArr;
        while (iArr < 32768) {
            if (iArr2[iArr] > 0) {
                ColorUtils.colorToHSL(Color.rgb((((iArr >> 10) & 31) << 3) & 255, (((iArr >> 5) & 31) << 3) & 255, ((iArr & 31) << 3) & 255), this.mTempHsl);
                if (shouldIgnoreColor$4870f67d(this.mTempHsl)) {
                    iArr2[iArr] = 0;
                }
            }
            if (iArr2[iArr] > 0) {
                i2++;
            }
            iArr++;
        }
        iArr = new int[i2];
        this.mColors = iArr;
        i3 = 0;
        int i5 = i3;
        while (i3 < 32768) {
            if (iArr2[i3] > 0) {
                int i6 = i5 + 1;
                iArr[i5] = i3;
                i5 = i6;
            }
            i3++;
        }
        if (i2 <= i) {
            this.mQuantizedColors = new ArrayList();
            i = iArr.length;
            while (i4 < i) {
                filterArr = iArr[i4];
                this.mQuantizedColors.add(new Swatch(Color.rgb((((filterArr >> 10) & 31) << 3) & 255, (((filterArr >> 5) & 31) << 3) & 255, ((filterArr & 31) << 3) & 255), iArr2[filterArr]));
                i4++;
            }
            return;
        }
        iArr = new PriorityQueue(i, VBOX_COMPARATOR_VOLUME);
        iArr.offer(new Vbox(0, this.mColors.length - 1));
        splitBoxes(iArr, i);
        this.mQuantizedColors = generateAverageColors(iArr);
    }

    private static void splitBoxes(PriorityQueue<Vbox> priorityQueue, int i) {
        while (priorityQueue.size() < i) {
            Vbox vbox = (Vbox) priorityQueue.poll();
            if (vbox != null && vbox.canSplit()) {
                priorityQueue.offer(vbox.splitBox());
                priorityQueue.offer(vbox);
            } else {
                return;
            }
        }
    }

    private List<Swatch> generateAverageColors(Collection<Vbox> collection) {
        List arrayList = new ArrayList(collection.size());
        for (Vbox averageColor : collection) {
            Swatch averageColor2 = averageColor.getAverageColor();
            if (!shouldIgnoreColor$4870f67d(averageColor2.getHsl())) {
                arrayList.add(averageColor2);
            }
        }
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void modifySignificantOctet(int[] r2, int r3, int r4, int r5) {
        /*
        switch(r3) {
            case -3: goto L_0x0037;
            case -2: goto L_0x001d;
            case -1: goto L_0x0004;
            default: goto L_0x0003;
        };
    L_0x0003:
        goto L_0x0038;
    L_0x0004:
        if (r4 > r5) goto L_0x0038;
    L_0x0006:
        r3 = r2[r4];
        r0 = r3 & 31;
        r0 = r0 << 10;
        r1 = r3 >> 5;
        r1 = r1 & 31;
        r1 = r1 << 5;
        r0 = r0 | r1;
        r3 = r3 >> 10;
        r3 = r3 & 31;
        r3 = r3 | r0;
        r2[r4] = r3;
        r4 = r4 + 1;
        goto L_0x0004;
    L_0x001d:
        if (r4 > r5) goto L_0x0036;
    L_0x001f:
        r3 = r2[r4];
        r0 = r3 >> 5;
        r0 = r0 & 31;
        r0 = r0 << 10;
        r1 = r3 >> 10;
        r1 = r1 & 31;
        r1 = r1 << 5;
        r0 = r0 | r1;
        r3 = r3 & 31;
        r3 = r3 | r0;
        r2[r4] = r3;
        r4 = r4 + 1;
        goto L_0x001d;
    L_0x0036:
        return;
    L_0x0037:
        return;
    L_0x0038:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.graphics.ColorCutQuantizer.modifySignificantOctet(int[], int, int, int):void");
    }

    private boolean shouldIgnoreColor$4870f67d(float[] fArr) {
        if (this.mFilters != null && this.mFilters.length > 0) {
            for (Filter isAllowed$4870f67d : this.mFilters) {
                if (!isAllowed$4870f67d.isAllowed$4870f67d(fArr)) {
                    return 1;
                }
            }
        }
        return false;
    }

    static int approximateToRgb888(int i, int i2, int i3) {
        return Color.rgb((i << 3) & 255, (i2 << 3) & 255, (i3 << 3) & 255);
    }
}
