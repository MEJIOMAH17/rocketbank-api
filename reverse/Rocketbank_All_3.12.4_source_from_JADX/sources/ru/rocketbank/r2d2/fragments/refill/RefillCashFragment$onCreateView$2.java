package ru.rocketbank.r2d2.fragments.refill;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RefillCashFragment.kt */
public final class RefillCashFragment$onCreateView$2 implements AnimatorListener {
    final /* synthetic */ RefillCashFragment this$0;

    public final void onAnimationCancel(Animator animator) {
    }

    public final void onAnimationEnd(Animator animator) {
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    RefillCashFragment$onCreateView$2(RefillCashFragment refillCashFragment) {
        this.this$0 = refillCashFragment;
    }

    public final void onAnimationStart(Animator animator) {
        animator = RefillCashFragment.access$getBinding$p(this.this$0).fab;
        Intrinsics.checkExpressionValueIsNotNull(animator, "binding.fab");
        animator.setClickable(false);
    }
}
