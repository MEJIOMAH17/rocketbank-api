package ru.rocketbank.r2d2.shop.details;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationSet;
import android.widget.FrameLayout.LayoutParams;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.shop.details.ShopDetailsActivity.ImagePinchListener;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$ImagePinchListener$onScaleBegin$2 extends Lambda implements Function1<RocketScaleGestureDetector, Unit> {
    final /* synthetic */ ImagePinchListener this$0;

    ShopDetailsActivity$ImagePinchListener$onScaleBegin$2(ImagePinchListener imagePinchListener) {
        this.this$0 = imagePinchListener;
        super(1);
    }

    public final void invoke(RocketScaleGestureDetector rocketScaleGestureDetector) {
        Intrinsics.checkParameterIsNotNull(rocketScaleGestureDetector, "detector");
        this.this$0.this$0.setOnScale(null);
        this.this$0.this$0.setOnScaleEnd(null);
        rocketScaleGestureDetector = new AnimationSet(true);
        rocketScaleGestureDetector.setFillAfter(true);
        rocketScaleGestureDetector.setDuration(500);
        rocketScaleGestureDetector.setInterpolator(new AccelerateInterpolator());
        rocketScaleGestureDetector = ObjectAnimator.ofFloat(this.this$0.getChild(), "x", new float[]{this.this$0.getChild().getX(), this.this$0.getWindowLocationX()});
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.this$0.getChild(), "y", new float[]{this.this$0.getChild().getY(), this.this$0.getWindowLocationY()});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.this$0.getChild(), "scaleX", new float[]{this.this$0.getChild().getScaleX(), 1.0f});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.this$0.getChild(), "scaleY", new float[]{this.this$0.getChild().getScaleY(), 1.0f});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play((Animator) rocketScaleGestureDetector).with(ofFloat).with(ofFloat2).with(ofFloat3);
        animatorSet.addListener((AnimatorListener) new AnimatorListener() {
            public final void onAnimationCancel(Animator animator) {
            }

            public final void onAnimationRepeat(Animator animator) {
            }

            public final void onAnimationStart(Animator animator) {
            }

            public final void onAnimationEnd(Animator animator) {
                this.this$0.getChild().setScaleX(1.0f);
                this.this$0.getChild().setScaleY(1.0f);
                this.this$0.getChild().setX(this.this$0.getLocationX());
                this.this$0.getChild().setY(this.this$0.getLocationY());
                this.this$0.getZoomView().removeView(this.this$0.getChild());
                this.this$0.getParent().addView(this.this$0.getChild(), new LayoutParams(-1, -1));
                ((GestureLockableObservableScrollView) this.this$0.this$0._$_findCachedViewById(C0859R.id.observableScrollView)).setScrollingEnabled(true);
                this.this$0.this$0.showBlockingView(false);
            }
        });
        animatorSet.start();
    }
}
