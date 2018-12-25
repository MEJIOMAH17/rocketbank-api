package ru.rocketbank.core.widgets;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.design.C0039R;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

final class CollapsingTextHelper {
    private static final Paint DEBUG_DRAW_PAINT = null;
    private static final boolean USE_SCALING_TEXTURE = (VERSION.SDK_INT < 18);
    private boolean mBoundsChanged;
    private final Rect mCollapsedBounds;
    private float mCollapsedDrawX;
    private float mCollapsedDrawY;
    private int mCollapsedShadowColor;
    private float mCollapsedShadowDx;
    private float mCollapsedShadowDy;
    private float mCollapsedShadowRadius;
    private int mCollapsedTextColor;
    private int mCollapsedTextGravity = 16;
    private float mCollapsedTextSize = 15.0f;
    private Typeface mCollapsedTypeface;
    private final RectF mCurrentBounds;
    private float mCurrentDrawX;
    private float mCurrentDrawY;
    private float mCurrentTextSize;
    private Typeface mCurrentTypeface;
    private boolean mDrawTitle;
    private final Rect mExpandedBounds;
    private float mExpandedDrawX;
    private float mExpandedDrawY;
    private float mExpandedFraction;
    private int mExpandedTextColor;
    private int mExpandedTextGravity = 16;
    private float mExpandedTextSize = 15.0f;
    private Bitmap mExpandedTitleTexture;
    private Typeface mExpandedTypeface;
    private boolean mIsRtl;
    private Interpolator mPositionInterpolator;
    private float mScale;
    private CharSequence mText;
    private final TextPaint mTextPaint;
    private Interpolator mTextSizeInterpolator;
    private CharSequence mTextToDraw;
    private float mTextureAscent;
    private float mTextureDescent;
    private Paint mTexturePaint;
    private boolean mUseTexture;
    private final View mView;

    public CollapsingTextHelper(View view, Typeface typeface) {
        this.mView = view;
        this.mTextPaint = new TextPaint();
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setTypeface(typeface);
        this.mCollapsedBounds = new Rect();
        this.mExpandedBounds = new Rect();
        this.mCurrentBounds = new RectF();
    }

    final void setTextSizeInterpolator(Interpolator interpolator) {
        this.mTextSizeInterpolator = interpolator;
        if (this.mView.getHeight() > null && this.mView.getWidth() > null) {
            calculateBaseOffsets();
            calculateOffsets(this.mExpandedFraction);
        }
    }

    final void setPositionInterpolator(Interpolator interpolator) {
        this.mPositionInterpolator = interpolator;
        if (this.mView.getHeight() > null && this.mView.getWidth() > null) {
            calculateBaseOffsets();
            calculateOffsets(this.mExpandedFraction);
        }
    }

    final void setExpandedTextSize(float f) {
        if (this.mExpandedTextSize != f) {
            this.mExpandedTextSize = f;
            if (this.mView.getHeight() > null && this.mView.getWidth() > null) {
                calculateBaseOffsets();
                calculateOffsets(this.mExpandedFraction);
            }
        }
    }

    final void setCollapsedTextColor(int i) {
        if (this.mCollapsedTextColor != i) {
            this.mCollapsedTextColor = i;
            if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
                calculateBaseOffsets();
                calculateOffsets(this.mExpandedFraction);
            }
        }
    }

    final void setExpandedTextColor(int i) {
        if (this.mExpandedTextColor != i) {
            this.mExpandedTextColor = i;
            if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
                calculateBaseOffsets();
                calculateOffsets(this.mExpandedFraction);
            }
        }
    }

    final void setExpandedBounds(int i, int i2, int i3, int i4) {
        if (!rectEquals(this.mExpandedBounds, i, i2, i3, i4)) {
            this.mExpandedBounds.set(i, i2, i3, i4);
            this.mBoundsChanged = true;
            onBoundsChanged();
        }
    }

    final void setCollapsedBounds(int i, int i2, int i3, int i4) {
        if (!rectEquals(this.mCollapsedBounds, i, i2, i3, i4)) {
            this.mCollapsedBounds.set(i, i2, i3, i4);
            this.mBoundsChanged = true;
            onBoundsChanged();
        }
    }

    private void onBoundsChanged() {
        boolean z = this.mCollapsedBounds.width() > 0 && this.mCollapsedBounds.height() > 0 && this.mExpandedBounds.width() > 0 && this.mExpandedBounds.height() > 0;
        this.mDrawTitle = z;
    }

    final void setExpandedTextGravity(int i) {
        if (this.mExpandedTextGravity != i) {
            this.mExpandedTextGravity = i;
            if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
                calculateBaseOffsets();
                calculateOffsets(this.mExpandedFraction);
            }
        }
    }

    final void setCollapsedTextGravity$13462e() {
        if (this.mCollapsedTextGravity != 8388659) {
            this.mCollapsedTextGravity = 8388659;
            if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
                calculateBaseOffsets();
                calculateOffsets(this.mExpandedFraction);
            }
        }
    }

    final void setCollapsedTextAppearance(int i) {
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(i, C0039R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(C0039R.styleable.TextAppearance_android_textColor)) {
            this.mCollapsedTextColor = obtainStyledAttributes.getColor(C0039R.styleable.TextAppearance_android_textColor, this.mCollapsedTextColor);
        }
        if (obtainStyledAttributes.hasValue(C0039R.styleable.TextAppearance_android_textSize)) {
            this.mCollapsedTextSize = (float) obtainStyledAttributes.getDimensionPixelSize(C0039R.styleable.TextAppearance_android_textSize, (int) this.mCollapsedTextSize);
        }
        this.mCollapsedShadowColor = obtainStyledAttributes.getInt(C0039R.styleable.TextAppearance_android_shadowColor, 0);
        this.mCollapsedShadowDx = obtainStyledAttributes.getFloat(C0039R.styleable.TextAppearance_android_shadowDx, BitmapDescriptorFactory.HUE_RED);
        this.mCollapsedShadowDy = obtainStyledAttributes.getFloat(C0039R.styleable.TextAppearance_android_shadowDy, BitmapDescriptorFactory.HUE_RED);
        this.mCollapsedShadowRadius = obtainStyledAttributes.getFloat(C0039R.styleable.TextAppearance_android_shadowRadius, BitmapDescriptorFactory.HUE_RED);
        obtainStyledAttributes.recycle();
        if (VERSION.SDK_INT >= 16) {
            this.mCollapsedTypeface = readFontFamilyTypeface(i);
        }
        if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
            calculateBaseOffsets();
            calculateOffsets(this.mExpandedFraction);
        }
    }

    private Typeface readFontFamilyTypeface(int i) {
        i = this.mView.getContext().obtainStyledAttributes(i, new int[]{16843692});
        try {
            String string = i.getString(0);
            if (string != null) {
                Typeface create = Typeface.create(string, 0);
                return create;
            }
            i.recycle();
            return 0;
        } finally {
            i.recycle();
        }
    }

    final void setTypefaces(Typeface typeface) {
        this.mExpandedTypeface = typeface;
        this.mCollapsedTypeface = typeface;
        if (this.mView.getHeight() > null && this.mView.getWidth() > null) {
            calculateBaseOffsets();
            calculateOffsets(this.mExpandedFraction);
        }
    }

    final Typeface getCollapsedTypeface() {
        return this.mCollapsedTypeface != null ? this.mCollapsedTypeface : Typeface.DEFAULT;
    }

    final void setExpansionFraction(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = BitmapDescriptorFactory.HUE_RED;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.mExpandedFraction) {
            this.mExpandedFraction = f;
            calculateOffsets(this.mExpandedFraction);
        }
    }

    final float getExpansionFraction() {
        return this.mExpandedFraction;
    }

    final float getCollapsedTextSize() {
        return this.mCollapsedTextSize;
    }

    private void calculateOffsets(float f) {
        float interpolation;
        interpolateBounds(f);
        float f2 = this.mExpandedDrawX;
        float f3 = this.mCollapsedDrawX;
        Interpolator interpolator = this.mPositionInterpolator;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(f);
        } else {
            interpolation = f;
        }
        this.mCurrentDrawX = f2 + (interpolation * (f3 - f2));
        f2 = this.mExpandedDrawY;
        f3 = this.mCollapsedDrawY;
        interpolator = this.mPositionInterpolator;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(f);
        } else {
            interpolation = f;
        }
        this.mCurrentDrawY = f2 + (interpolation * (f3 - f2));
        f2 = this.mExpandedTextSize;
        f3 = this.mCollapsedTextSize;
        interpolator = this.mTextSizeInterpolator;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(f);
        } else {
            interpolation = f;
        }
        setInterpolatedTextSize(f2 + (interpolation * (f3 - f2)));
        if (this.mCollapsedTextColor != this.mExpandedTextColor) {
            this.mTextPaint.setColor(blendColors(this.mExpandedTextColor, this.mCollapsedTextColor, f));
        } else {
            this.mTextPaint.setColor(this.mCollapsedTextColor);
        }
        this.mTextPaint.setShadowLayer((this.mCollapsedShadowRadius * f) + BitmapDescriptorFactory.HUE_RED, (this.mCollapsedShadowDx * f) + BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED + (this.mCollapsedShadowDy * f), blendColors(0, this.mCollapsedShadowColor, f));
        ViewCompat.postInvalidateOnAnimation(this.mView);
    }

    private void calculateBaseOffsets() {
        float f = this.mCurrentTextSize;
        calculateUsingTextSize(this.mCollapsedTextSize);
        CharSequence charSequence = this.mTextToDraw;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float measureText = charSequence != null ? this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()) : BitmapDescriptorFactory.HUE_RED;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.mCollapsedTextGravity, this.mIsRtl);
        int i = absoluteGravity & 112;
        if (i == 48) {
            this.mCollapsedDrawY = ((float) this.mCollapsedBounds.top) - this.mTextPaint.ascent();
        } else if (i != 80) {
            this.mCollapsedDrawY = ((float) this.mCollapsedBounds.centerY()) + (((this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f) - this.mTextPaint.descent());
        } else {
            this.mCollapsedDrawY = (float) this.mCollapsedBounds.bottom;
        }
        absoluteGravity &= 7;
        if (absoluteGravity == 1) {
            this.mCollapsedDrawX = ((float) this.mCollapsedBounds.centerX()) - (measureText / 2.0f);
        } else if (absoluteGravity != 5) {
            this.mCollapsedDrawX = (float) this.mCollapsedBounds.left;
        } else {
            this.mCollapsedDrawX = ((float) this.mCollapsedBounds.right) - measureText;
        }
        calculateUsingTextSize(this.mExpandedTextSize);
        if (this.mTextToDraw != null) {
            f2 = this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length());
        }
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.mExpandedTextGravity, this.mIsRtl);
        int i2 = absoluteGravity2 & 112;
        if (i2 == 48) {
            this.mExpandedDrawY = ((float) this.mExpandedBounds.top) - this.mTextPaint.ascent();
        } else if (i2 != 80) {
            this.mExpandedDrawY = ((float) this.mExpandedBounds.centerY()) + (((this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f) - this.mTextPaint.descent());
        } else {
            this.mExpandedDrawY = (float) this.mExpandedBounds.bottom;
        }
        absoluteGravity2 &= 7;
        if (absoluteGravity2 == 1) {
            this.mExpandedDrawX = ((float) this.mExpandedBounds.centerX()) - (f2 / 2.0f);
        } else if (absoluteGravity2 != 5) {
            this.mExpandedDrawX = (float) this.mExpandedBounds.left;
        } else {
            this.mExpandedDrawX = ((float) this.mExpandedBounds.right) - f2;
        }
        if (this.mExpandedTitleTexture != null) {
            this.mExpandedTitleTexture.recycle();
            this.mExpandedTitleTexture = null;
        }
        setInterpolatedTextSize(f);
    }

    private void interpolateBounds(float f) {
        float interpolation;
        RectF rectF = this.mCurrentBounds;
        float f2 = (float) this.mExpandedBounds.left;
        float f3 = (float) this.mCollapsedBounds.left;
        Interpolator interpolator = this.mPositionInterpolator;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(f);
        } else {
            interpolation = f;
        }
        rectF.left = f2 + (interpolation * (f3 - f2));
        rectF = this.mCurrentBounds;
        f2 = this.mExpandedDrawY;
        f3 = this.mCollapsedDrawY;
        interpolator = this.mPositionInterpolator;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(f);
        } else {
            interpolation = f;
        }
        rectF.top = f2 + (interpolation * (f3 - f2));
        rectF = this.mCurrentBounds;
        f2 = (float) this.mExpandedBounds.right;
        f3 = (float) this.mCollapsedBounds.right;
        interpolator = this.mPositionInterpolator;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(f);
        } else {
            interpolation = f;
        }
        rectF.right = f2 + (interpolation * (f3 - f2));
        rectF = this.mCurrentBounds;
        f2 = (float) this.mExpandedBounds.bottom;
        f3 = (float) this.mCollapsedBounds.bottom;
        interpolator = this.mPositionInterpolator;
        if (interpolator != null) {
            f = interpolator.getInterpolation(f);
        }
        rectF.bottom = f2 + (f * (f3 - f2));
    }

    public final void draw(Canvas canvas) {
        int save = canvas.save();
        if (this.mTextToDraw != null && this.mDrawTitle) {
            float f;
            float f2 = this.mCurrentDrawX;
            float f3 = this.mCurrentDrawY;
            Object obj = (!this.mUseTexture || this.mExpandedTitleTexture == null) ? null : 1;
            this.mTextPaint.setTextSize(this.mCurrentTextSize);
            if (obj != null) {
                f = this.mTextureAscent * this.mScale;
            } else {
                this.mTextPaint.ascent();
                f = BitmapDescriptorFactory.HUE_RED;
                this.mTextPaint.descent();
            }
            if (obj != null) {
                f3 += f;
            }
            float f4 = f3;
            if (this.mScale != 1.0f) {
                canvas.scale(this.mScale, this.mScale, f2, f4);
            }
            if (obj != null) {
                canvas.drawBitmap(this.mExpandedTitleTexture, f2, f4, this.mTexturePaint);
            } else {
                canvas.drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), f2, f4, this.mTextPaint);
            }
        }
        canvas.restoreToCount(save);
    }

    private boolean calculateIsRtl(CharSequence charSequence) {
        Object obj = 1;
        if (ViewCompat.getLayoutDirection(this.mView) != 1) {
            obj = null;
        }
        return (obj != null ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL$22f09884 : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR$22f09884).isRtl$4d1ed0c3(charSequence, charSequence.length());
    }

    private void setInterpolatedTextSize(float f) {
        calculateUsingTextSize(f);
        f = (USE_SCALING_TEXTURE == null || this.mScale == 1.0f) ? BitmapDescriptorFactory.HUE_RED : Float.MIN_VALUE;
        this.mUseTexture = f;
        if (this.mUseTexture != null) {
            ensureExpandedTexture();
        }
        ViewCompat.postInvalidateOnAnimation(this.mView);
    }

    private void calculateUsingTextSize(float f) {
        if (this.mText != null) {
            float f2;
            boolean z;
            if (Math.abs(f - this.mCollapsedTextSize) < 0.001f) {
                f = (float) this.mCollapsedBounds.width();
                f2 = this.mCollapsedTextSize;
                this.mScale = 1.0f;
                if (this.mCurrentTypeface != this.mCollapsedTypeface) {
                    this.mCurrentTypeface = this.mCollapsedTypeface;
                    z = true;
                } else {
                    z = false;
                }
            } else {
                f2 = (float) this.mExpandedBounds.width();
                float f3 = this.mExpandedTextSize;
                if (this.mCurrentTypeface != this.mExpandedTypeface) {
                    this.mCurrentTypeface = this.mExpandedTypeface;
                    z = true;
                } else {
                    z = false;
                }
                if (Math.abs(f - this.mExpandedTextSize) < 0.001f) {
                    this.mScale = 1.0f;
                } else {
                    this.mScale = f / this.mExpandedTextSize;
                }
                f = f2;
                f2 = f3;
            }
            if (f > BitmapDescriptorFactory.HUE_RED) {
                if (this.mCurrentTextSize == f2 && !this.mBoundsChanged) {
                    if (!z) {
                        z = false;
                        this.mCurrentTextSize = f2;
                        this.mBoundsChanged = false;
                    }
                }
                z = true;
                this.mCurrentTextSize = f2;
                this.mBoundsChanged = false;
            }
            if (this.mTextToDraw == null || r6) {
                this.mTextPaint.setTextSize(this.mCurrentTextSize);
                this.mTextPaint.setTypeface(this.mCurrentTypeface);
                f = TextUtils.ellipsize(this.mText, this.mTextPaint, f, TruncateAt.END);
                if (!TextUtils.equals(f, this.mTextToDraw)) {
                    this.mTextToDraw = f;
                    this.mIsRtl = calculateIsRtl(this.mTextToDraw);
                }
            }
        }
    }

    private void ensureExpandedTexture() {
        if (this.mExpandedTitleTexture == null && !this.mExpandedBounds.isEmpty()) {
            if (!TextUtils.isEmpty(this.mTextToDraw)) {
                calculateOffsets(BitmapDescriptorFactory.HUE_RED);
                this.mTextureAscent = this.mTextPaint.ascent();
                this.mTextureDescent = this.mTextPaint.descent();
                int round = Math.round(this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()));
                int round2 = Math.round(this.mTextureDescent - this.mTextureAscent);
                if (round > 0) {
                    if (round2 > 0) {
                        this.mExpandedTitleTexture = Bitmap.createBitmap(round, round2, Config.ARGB_8888);
                        new Canvas(this.mExpandedTitleTexture).drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), BitmapDescriptorFactory.HUE_RED, ((float) round2) - this.mTextPaint.descent(), this.mTextPaint);
                        if (this.mTexturePaint == null) {
                            this.mTexturePaint = new Paint(3);
                        }
                    }
                }
            }
        }
    }

    public final void recalculate() {
        if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
            calculateBaseOffsets();
            calculateOffsets(this.mExpandedFraction);
        }
    }

    final void setText(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.mText)) {
            this.mText = charSequence;
            this.mTextToDraw = null;
            if (this.mExpandedTitleTexture != null) {
                this.mExpandedTitleTexture.recycle();
                this.mExpandedTitleTexture = null;
            }
            recalculate();
        }
    }

    final CharSequence getText() {
        return this.mText;
    }

    final int getCollapsedTextColor() {
        return this.mCollapsedTextColor;
    }

    private static int blendColors(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((((float) Color.alpha(i)) * f2) + (((float) Color.alpha(i2)) * f)), (int) ((((float) Color.red(i)) * f2) + (((float) Color.red(i2)) * f)), (int) ((((float) Color.green(i)) * f2) + (((float) Color.green(i2)) * f)), (int) ((((float) Color.blue(i)) * f2) + (((float) Color.blue(i2)) * f)));
    }

    private static boolean rectEquals(Rect rect, int i, int i2, int i3, int i4) {
        return (rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4) ? true : null;
    }
}
