package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.view.View;
import io.codetail.animation.SupportAnimator.SimpleAnimatorListener;

/* compiled from: RocketRoubleFragment.kt */
public final class RocketRoubleFragment$exitReveal$1 extends SimpleAnimatorListener {
    final /* synthetic */ View $view;

    RocketRoubleFragment$exitReveal$1(View view) {
        this.$view = view;
    }

    public final void onAnimationEnd() {
        this.$view.setVisibility(4);
    }
}
