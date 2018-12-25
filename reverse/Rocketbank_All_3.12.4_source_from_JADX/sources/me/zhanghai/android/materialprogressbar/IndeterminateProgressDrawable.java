package me.zhanghai.android.materialprogressbar;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.RectF;
import android.support.annotation.Keep;

public class IndeterminateProgressDrawable extends IndeterminateProgressDrawableBase {
    private static final float PADDED_INTRINSIC_SIZE_DP = 16.0f;
    private static final float PROGRESS_INTRINSIC_SIZE_DP = 3.2f;
    private static final RectF RECT_BOUND = new RectF(-21.0f, -21.0f, 21.0f, 21.0f);
    private static final RectF RECT_PADDED_BOUND = new RectF(-24.0f, -24.0f, 24.0f, 24.0f);
    private static final RectF RECT_PROGRESS = new RectF(-19.0f, -19.0f, 19.0f, 19.0f);
    private int mPaddedIntrinsicSize;
    private int mProgressIntrinsicSize;
    private RingPathTransform mRingPathTransform = new RingPathTransform();
    private RingRotation mRingRotation = new RingRotation();

    private static class RingPathTransform {
        public float mTrimPathEnd;
        public float mTrimPathOffset;
        public float mTrimPathStart;

        private RingPathTransform() {
        }

        @Keep
        public void setTrimPathStart(float f) {
            this.mTrimPathStart = f;
        }

        @Keep
        public void setTrimPathEnd(float f) {
            this.mTrimPathEnd = f;
        }

        @Keep
        public void setTrimPathOffset(float f) {
            this.mTrimPathOffset = f;
        }
    }

    private static class RingRotation {
        private float mRotation;

        private RingRotation() {
        }

        @Keep
        public void setRotation(float f) {
            this.mRotation = f;
        }
    }

    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    public /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    public /* bridge */ /* synthetic */ boolean getUseIntrinsicPadding() {
        return super.getUseIntrinsicPadding();
    }

    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    public /* bridge */ /* synthetic */ void setTint(int i) {
        super.setTint(i);
    }

    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    public /* bridge */ /* synthetic */ void setTintMode(Mode mode) {
        super.setTintMode(mode);
    }

    public /* bridge */ /* synthetic */ void setUseIntrinsicPadding(boolean z) {
        super.setUseIntrinsicPadding(z);
    }

    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    public IndeterminateProgressDrawable(Context context) {
        super(context);
        context = context.getResources().getDisplayMetrics().density;
        this.mProgressIntrinsicSize = Math.round(PROGRESS_INTRINSIC_SIZE_DP * context);
        this.mPaddedIntrinsicSize = Math.round(PADDED_INTRINSIC_SIZE_DP * context);
        this.mAnimators = new Animator[]{Animators.createIndeterminate(this.mRingPathTransform), Animators.createIndeterminateRotation(this.mRingRotation)};
    }

    private int getIntrinsicSize() {
        return this.mUseIntrinsicPadding ? this.mPaddedIntrinsicSize : this.mProgressIntrinsicSize;
    }

    public int getIntrinsicWidth() {
        return getIntrinsicSize();
    }

    public int getIntrinsicHeight() {
        return getIntrinsicSize();
    }

    protected void onPreparePaint(Paint paint) {
        paint.setStyle(Style.STROKE);
        paint.setStrokeWidth(4.0f);
        paint.setStrokeCap(Cap.SQUARE);
        paint.setStrokeJoin(Join.MITER);
    }

    protected void onDraw(Canvas canvas, int i, int i2, Paint paint) {
        if (this.mUseIntrinsicPadding) {
            canvas.scale(((float) i) / RECT_PADDED_BOUND.width(), ((float) i2) / RECT_PADDED_BOUND.height());
            canvas.translate(RECT_PADDED_BOUND.width() / 1073741824, RECT_PADDED_BOUND.height() / 1073741824);
        } else {
            canvas.scale(((float) i) / RECT_BOUND.width(), ((float) i2) / RECT_BOUND.height());
            canvas.translate(RECT_BOUND.width() / 1073741824, RECT_BOUND.height() / 1073741824);
        }
        drawRing(canvas, paint);
    }

    private void drawRing(Canvas canvas, Paint paint) {
        int save = canvas.save();
        canvas.rotate(this.mRingRotation.mRotation);
        Canvas canvas2 = canvas;
        canvas2.drawArc(RECT_PROGRESS, -90.0f + ((this.mRingPathTransform.mTrimPathOffset + this.mRingPathTransform.mTrimPathStart) * 360.0f), 360.0f * (this.mRingPathTransform.mTrimPathEnd - this.mRingPathTransform.mTrimPathStart), false, paint);
        canvas.restoreToCount(save);
    }
}
