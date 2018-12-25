package ru.rocketbank.r2d2.fragments.refill;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RefillCashFragment.kt */
final class RefillCashFragment$runAnimation$1 implements AnimatorUpdateListener {
    final /* synthetic */ RefillCashFragment this$0;

    RefillCashFragment$runAnimation$1(RefillCashFragment refillCashFragment) {
        this.this$0 = refillCashFragment;
    }

    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (valueAnimator == null) {
            Intrinsics.throwNpe();
        }
        valueAnimator = valueAnimator.getAnimatedValue();
        if (valueAnimator == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
        }
        valueAnimator = ((Integer) valueAnimator).intValue();
        RefillCashFragment.access$getMapData$p(this.this$0).getDetailsHeight().set(valueAnimator);
        RefillCashFragment.access$getBehavior$p(this.this$0).setPeekHeight(valueAnimator);
    }
}
