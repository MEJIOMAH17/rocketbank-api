package ru.rocketbank.r2d2.fragments.refill;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.support.design.widget.FloatingActionButton;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RefillCashFragment.kt */
public final class RefillCashFragment$onCreateView$3$onStateChanged$2 implements AnimatorListener {
    final /* synthetic */ FloatingActionButton $fab;

    public final void onAnimationCancel(Animator animator) {
    }

    public final void onAnimationEnd(Animator animator) {
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    RefillCashFragment$onCreateView$3$onStateChanged$2(FloatingActionButton floatingActionButton) {
        this.$fab = floatingActionButton;
    }

    public final void onAnimationStart(Animator animator) {
        animator = this.$fab;
        Intrinsics.checkExpressionValueIsNotNull(animator, "fab");
        animator.setClickable(true);
    }
}
