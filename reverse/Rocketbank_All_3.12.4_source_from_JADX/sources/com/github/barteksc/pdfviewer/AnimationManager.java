package com.github.barteksc.pdfviewer;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.PointF;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

class AnimationManager {
    private ValueAnimator animation;
    private ValueAnimator flingAnimation;
    private PDFView pdfView;
    private Scroller scroller;

    class FlingAnimation implements AnimatorListener, AnimatorUpdateListener {
        public final void onAnimationCancel(Animator animator) {
        }

        public final void onAnimationRepeat(Animator animator) {
        }

        public final void onAnimationStart(Animator animator) {
        }

        FlingAnimation() {
        }

        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (AnimationManager.this.scroller.isFinished() == null) {
                AnimationManager.this.scroller.computeScrollOffset();
                AnimationManager.this.pdfView.moveTo((float) AnimationManager.this.scroller.getCurrX(), (float) AnimationManager.this.scroller.getCurrY());
                AnimationManager.this.pdfView.loadPageByOffset();
            }
        }

        public final void onAnimationEnd(Animator animator) {
            AnimationManager.this.pdfView.loadPages();
            AnimationManager.access$100(AnimationManager.this);
        }
    }

    class ZoomAnimation implements AnimatorListener, AnimatorUpdateListener {
        private final float centerX;
        private final float centerY;

        public final void onAnimationCancel(Animator animator) {
        }

        public final void onAnimationRepeat(Animator animator) {
        }

        public final void onAnimationStart(Animator animator) {
        }

        public ZoomAnimation(float f, float f2) {
            this.centerX = f;
            this.centerY = f2;
        }

        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            AnimationManager.this.pdfView.zoomCenteredTo(((Float) valueAnimator.getAnimatedValue()).floatValue(), new PointF(this.centerX, this.centerY));
        }

        public final void onAnimationEnd(Animator animator) {
            AnimationManager.this.pdfView.loadPages();
            AnimationManager.access$100(AnimationManager.this);
        }
    }

    static /* synthetic */ void access$100(AnimationManager animationManager) {
    }

    public AnimationManager(PDFView pDFView) {
        this.pdfView = pDFView;
        this.scroller = new Scroller(pDFView.getContext(), null, true);
    }

    public final void stopAll() {
        if (this.animation != null) {
            this.animation.cancel();
            this.animation = null;
        }
        if (this.flingAnimation != null) {
            this.scroller.forceFinished(true);
            this.flingAnimation.cancel();
            this.flingAnimation = null;
        }
    }

    public final void stopFling() {
        if (this.flingAnimation != null) {
            this.scroller.forceFinished(true);
            this.flingAnimation.cancel();
            this.flingAnimation = null;
        }
    }

    public final void startZoomAnimation(float f, float f2, float f3, float f4) {
        if (this.animation != null) {
            this.animation.cancel();
            this.animation = null;
        }
        if (this.flingAnimation != null) {
            this.scroller.forceFinished(true);
            this.flingAnimation.cancel();
            this.flingAnimation = null;
        }
        this.animation = ValueAnimator.ofFloat(new float[]{f3, f4});
        this.animation.setInterpolator(new DecelerateInterpolator());
        f3 = new ZoomAnimation(f, f2);
        this.animation.addUpdateListener(f3);
        this.animation.addListener(f3);
        this.animation.setDuration(5.6E-43f);
        this.animation.start();
    }

    public final void startFlingAnimation$69c647f5(int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.animation != null) {
            r0.animation.cancel();
            r0.animation = null;
        }
        if (r0.flingAnimation != null) {
            r0.scroller.forceFinished(true);
            r0.flingAnimation.cancel();
            r0.flingAnimation = null;
        }
        r0.flingAnimation = ValueAnimator.ofFloat(new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f});
        Object flingAnimation = new FlingAnimation();
        r0.flingAnimation.addUpdateListener(flingAnimation);
        r0.flingAnimation.addListener(flingAnimation);
        r0.scroller.fling(i, i2, i3, i4, i5, 0, i6, 0);
        r0.flingAnimation.setDuration((long) r0.scroller.getDuration());
        r0.flingAnimation.start();
    }
}
