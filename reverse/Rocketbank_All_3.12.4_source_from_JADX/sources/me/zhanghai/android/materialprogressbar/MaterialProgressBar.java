package me.zhanghai.android.materialprogressbar;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ProgressBar;
import me.zhanghai.android.materialprogressbar.internal.DrawableCompat;

public class MaterialProgressBar extends ProgressBar {
    public static final int PROGRESS_STYLE_CIRCULAR = 0;
    public static final int PROGRESS_STYLE_HORIZONTAL = 1;
    private static final String TAG = "MaterialProgressBar";
    private int mProgressStyle;
    private TintInfo mProgressTint = new TintInfo();

    private static class TintInfo {
        boolean mHasTintList;
        boolean mHasTintMode;
        ColorStateList mTintList;
        Mode mTintMode;

        private TintInfo() {
        }
    }

    public MaterialProgressBar(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public MaterialProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public MaterialProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    @TargetApi(21)
    public MaterialProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context, attributeSet, i, i2);
    }

    private void init(Context context, AttributeSet attributeSet, int i, int i2) {
        attributeSet = context.obtainStyledAttributes(attributeSet, C0768R.styleable.MaterialProgressBar, i, i2);
        i2 = 0;
        this.mProgressStyle = attributeSet.getInt(C0768R.styleable.MaterialProgressBar_mpb_progressStyle, 0);
        i = attributeSet.getBoolean(C0768R.styleable.MaterialProgressBar_mpb_setBothDrawables, false);
        boolean z = attributeSet.getBoolean(C0768R.styleable.MaterialProgressBar_mpb_useIntrinsicPadding, true);
        int i3 = C0768R.styleable.MaterialProgressBar_mpb_showTrack;
        if (this.mProgressStyle == 1) {
            i2 = 1;
        }
        i2 = attributeSet.getBoolean(i3, i2);
        if (attributeSet.hasValue(C0768R.styleable.MaterialProgressBar_android_tint)) {
            this.mProgressTint.mTintList = attributeSet.getColorStateList(C0768R.styleable.MaterialProgressBar_android_tint);
            this.mProgressTint.mHasTintList = true;
        }
        if (attributeSet.hasValue(C0768R.styleable.MaterialProgressBar_mpb_tintMode)) {
            this.mProgressTint.mTintMode = DrawableCompat.parseTintMode(attributeSet.getInt(C0768R.styleable.MaterialProgressBar_mpb_tintMode, -1), null);
            this.mProgressTint.mHasTintMode = true;
        }
        attributeSet.recycle();
        switch (this.mProgressStyle) {
            case null:
                if (isIndeterminate() != null) {
                    if (i == 0) {
                        if (isInEditMode() == null) {
                            setIndeterminateDrawable(new IndeterminateProgressDrawable(context));
                            break;
                        }
                    }
                }
                throw new UnsupportedOperationException("Determinate circular drawable is not yet supported");
            case 1:
                if (!(isIndeterminate() == null && i == 0) && isInEditMode() == null) {
                    setIndeterminateDrawable(new IndeterminateHorizontalProgressDrawable(context));
                }
                if (isIndeterminate() == null || i != 0) {
                    setProgressDrawable(new HorizontalProgressDrawable(context));
                    break;
                }
            default:
                attributeSet = new StringBuilder("Unknown progress style: ");
                attributeSet.append(this.mProgressStyle);
                throw new IllegalArgumentException(attributeSet.toString());
        }
        setUseIntrinsicPadding(z);
        setShowTrack(i2);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        fixCanvasScalingWhenHardwareAccelerated();
    }

    private void fixCanvasScalingWhenHardwareAccelerated() {
        if (VERSION.SDK_INT < 18 && isHardwareAccelerated() && getLayerType() != 1) {
            setLayerType(1, null);
        }
    }

    public int getProgressStyle() {
        return this.mProgressStyle;
    }

    public Drawable getDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public boolean getUseIntrinsicPadding() {
        Drawable drawable = getDrawable();
        if (drawable instanceof IntrinsicPaddingDrawable) {
            return ((IntrinsicPaddingDrawable) drawable).getUseIntrinsicPadding();
        }
        throw new IllegalStateException("Drawable does not implement IntrinsicPaddingDrawable");
    }

    public void setUseIntrinsicPadding(boolean z) {
        Drawable drawable = getDrawable();
        if (drawable instanceof IntrinsicPaddingDrawable) {
            ((IntrinsicPaddingDrawable) drawable).setUseIntrinsicPadding(z);
        }
        drawable = getIndeterminateDrawable();
        if (drawable instanceof IntrinsicPaddingDrawable) {
            ((IntrinsicPaddingDrawable) drawable).setUseIntrinsicPadding(z);
        }
    }

    public boolean getShowTrack() {
        Drawable drawable = getDrawable();
        return drawable instanceof ShowTrackDrawable ? ((ShowTrackDrawable) drawable).getShowTrack() : false;
    }

    public void setShowTrack(boolean z) {
        Drawable drawable = getDrawable();
        if (drawable instanceof ShowTrackDrawable) {
            ((ShowTrackDrawable) drawable).setShowTrack(z);
        }
        drawable = getIndeterminateDrawable();
        if (drawable instanceof ShowTrackDrawable) {
            ((ShowTrackDrawable) drawable).setShowTrack(z);
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        super.setProgressDrawable(drawable);
        if (this.mProgressTint != null) {
            applyDeterminateProgressTint();
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        super.setIndeterminateDrawable(drawable);
        if (this.mProgressTint != null) {
            applyIndeterminateProgressTint();
        }
    }

    public ColorStateList getProgressTintList() {
        return this.mProgressTint.mTintList;
    }

    public void setProgressTintList(ColorStateList colorStateList) {
        this.mProgressTint.mTintList = colorStateList;
        this.mProgressTint.mHasTintList = true;
        applyProgressTint();
    }

    public Mode getProgressTintMode() {
        return this.mProgressTint.mTintMode;
    }

    public void setProgressTintMode(Mode mode) {
        this.mProgressTint.mTintMode = mode;
        this.mProgressTint.mHasTintMode = true;
        applyProgressTint();
    }

    private void applyProgressTint() {
        applyDeterminateProgressTint();
        applyIndeterminateProgressTint();
    }

    private void applyDeterminateProgressTint() {
        if (this.mProgressTint.mHasTintList || this.mProgressTint.mHasTintMode) {
            Drawable progressDrawable = getProgressDrawable();
            if (progressDrawable != null) {
                applyTintForDrawable(progressDrawable, this.mProgressTint);
            }
        }
    }

    private void applyIndeterminateProgressTint() {
        if (this.mProgressTint.mHasTintList || this.mProgressTint.mHasTintMode) {
            Drawable indeterminateDrawable = getIndeterminateDrawable();
            if (indeterminateDrawable != null) {
                applyTintForDrawable(indeterminateDrawable, this.mProgressTint);
            }
        }
    }

    @SuppressLint({"NewApi"})
    private void applyTintForDrawable(Drawable drawable, TintInfo tintInfo) {
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            if (tintInfo.mHasTintList) {
                if (drawable instanceof TintableDrawable) {
                    ((TintableDrawable) drawable).setTintList(tintInfo.mTintList);
                } else {
                    Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
                    if (VERSION.SDK_INT >= 21) {
                        drawable.setTintList(tintInfo.mTintList);
                    }
                }
            }
            if (tintInfo.mHasTintMode) {
                if (drawable instanceof TintableDrawable) {
                    ((TintableDrawable) drawable).setTintMode(tintInfo.mTintMode);
                } else {
                    Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
                    if (VERSION.SDK_INT >= 21) {
                        drawable.setTintMode(tintInfo.mTintMode);
                    }
                }
            }
            if (drawable.isStateful() != null) {
                drawable.setState(getDrawableState());
            }
        }
    }
}
