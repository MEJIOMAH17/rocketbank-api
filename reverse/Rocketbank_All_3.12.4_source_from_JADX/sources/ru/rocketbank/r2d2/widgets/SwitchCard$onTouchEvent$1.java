package ru.rocketbank.r2d2.widgets;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SwitchCard.kt */
public final class SwitchCard$onTouchEvent$1 implements AnimatorListener {
    final /* synthetic */ SwitchCard this$0;

    public final void onAnimationRepeat(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
    }

    SwitchCard$onTouchEvent$1(SwitchCard switchCard) {
        this.this$0 = switchCard;
    }

    public final void onAnimationStart(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
        this.this$0.isAnimating$App_prodRelease().set(true);
    }

    public final void onAnimationEnd(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
        this.this$0.isAnimating$App_prodRelease().set(false);
        this.this$0.setChecked(this.this$0.isChecked() ^ 1);
    }

    public final void onAnimationCancel(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
        this.this$0.isAnimating$App_prodRelease().set(false);
    }
}
