package ru.rocketbank.r2d2.fragments.refill;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout;

/* compiled from: RefillCashFragment.kt */
public final class RefillCashFragment$showDescriptionWindowHeader$1 implements OnGlobalLayoutListener {
    final /* synthetic */ LinearLayout $view;
    final /* synthetic */ boolean $wasShowing;
    final /* synthetic */ RefillCashFragment this$0;

    RefillCashFragment$showDescriptionWindowHeader$1(RefillCashFragment refillCashFragment, LinearLayout linearLayout, boolean z) {
        this.this$0 = refillCashFragment;
        this.$view = linearLayout;
        this.$wasShowing = z;
    }

    public final void onGlobalLayout() {
        LinearLayout linearLayout = this.$view;
        if (linearLayout != null) {
            ViewTreeObserver viewTreeObserver = linearLayout.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
        linearLayout = this.$view;
        int intValue = (linearLayout != null ? Integer.valueOf(linearLayout.getHeight()) : null).intValue();
        if (this.$wasShowing) {
            RefillCashFragment.access$getBehavior$p(this.this$0).setState(4);
            this.this$0.runAnimation(this.this$0.currentHeight, intValue);
        } else {
            RefillCashFragment.access$getBehavior$p(this.this$0).setPeekHeight(intValue);
            RefillCashFragment.access$getBehavior$p(this.this$0).setState(4);
            this.this$0.runAnimationButton(this.this$0.currentHeight, intValue);
        }
        this.this$0.currentHeight = intValue;
    }
}
