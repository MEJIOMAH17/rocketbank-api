package ru.rocketbank.r2d2.root.feed.viewholder;

import android.view.View;
import io.codetail.animation.SupportAnimator.SimpleAnimatorListener;

/* compiled from: MonthCashBackViewHolder.kt */
public final class MonthCashBackViewHolder$exitReveal$1 extends SimpleAnimatorListener {
    final /* synthetic */ View $view;

    MonthCashBackViewHolder$exitReveal$1(View view) {
        this.$view = view;
    }

    public final void onAnimationEnd() {
        this.$view.setVisibility(4);
    }
}
