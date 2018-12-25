package com.github.rahatarmanahmed.cpv;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class CircularProgressView extends View {
    private float actualProgress;
    private ValueAnimator progressAnimator;
    private int size;
    private float startAngle;
    private ValueAnimator startAngleRotate;

    /* renamed from: com.github.rahatarmanahmed.cpv.CircularProgressView$3 */
    class C05353 implements AnimatorUpdateListener {
        C05353() {
        }

        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            CircularProgressView.this.startAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CircularProgressView.this.invalidate();
        }
    }

    /* renamed from: com.github.rahatarmanahmed.cpv.CircularProgressView$4 */
    class C05364 implements AnimatorUpdateListener {
        C05364() {
        }

        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            CircularProgressView.this.actualProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CircularProgressView.this.invalidate();
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        i = getPaddingLeft() + getPaddingRight();
        i2 = getPaddingTop() + getPaddingBottom();
        int measuredWidth = getMeasuredWidth() - i;
        int measuredHeight = getMeasuredHeight() - i2;
        if (measuredWidth >= measuredHeight) {
            measuredWidth = measuredHeight;
        }
        this.size = measuredWidth;
        setMeasuredDimension(this.size + i, this.size + i2);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i >= i2) {
            i = i2;
        }
        this.size = i;
        i = getPaddingLeft();
        i2 = getPaddingTop();
        i3 = 0;
        i3.set((float) i, (float) i2, (float) (this.size - i), (float) (this.size - i2));
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(null, this.startAngle, isInEditMode() ? Float.NaN : (this.actualProgress / BitmapDescriptorFactory.HUE_RED) * 360.0f, false, null);
    }

    private void stopAnimation() {
        if (this.startAngleRotate != null) {
            this.startAngleRotate.cancel();
            this.startAngleRotate = null;
        }
        if (this.progressAnimator != null) {
            this.progressAnimator.cancel();
            this.progressAnimator = null;
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    public void setVisibility(int i) {
        int visibility = getVisibility();
        super.setVisibility(i);
        if (i != visibility) {
            if (i == 0) {
                if (!(this.startAngleRotate == 0 || this.startAngleRotate.isRunning() == 0)) {
                    this.startAngleRotate.cancel();
                }
                if (!(this.progressAnimator == 0 || this.progressAnimator.isRunning() == 0)) {
                    this.progressAnimator.cancel();
                }
                this.startAngle = BitmapDescriptorFactory.HUE_RED;
                this.startAngleRotate = ValueAnimator.ofFloat(new float[]{this.startAngle, this.startAngle + 360.0f});
                this.startAngleRotate.setDuration(0);
                this.startAngleRotate.setInterpolator(new DecelerateInterpolator(2.0f));
                this.startAngleRotate.addUpdateListener(new C05353());
                this.startAngleRotate.start();
                this.actualProgress = BitmapDescriptorFactory.HUE_RED;
                this.progressAnimator = ValueAnimator.ofFloat(new float[]{this.actualProgress, BitmapDescriptorFactory.HUE_RED});
                this.progressAnimator.setDuration(0);
                this.progressAnimator.setInterpolator(new LinearInterpolator());
                this.progressAnimator.addUpdateListener(new C05364());
                this.progressAnimator.start();
            } else if (i == 8 || i == 4) {
                stopAnimation();
            }
        }
    }
}
