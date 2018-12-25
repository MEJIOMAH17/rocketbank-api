package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.view.View;
import io.codetail.animation.SupportAnimator.SimpleAnimatorListener;

/* compiled from: NonSelectedHolder.kt */
public final class NonSelectedHolder$exitReveal$1 extends SimpleAnimatorListener {
    final /* synthetic */ View $view;

    NonSelectedHolder$exitReveal$1(View view) {
        this.$view = view;
    }

    public final void onAnimationEnd() {
        this.$view.setVisibility(4);
    }
}
