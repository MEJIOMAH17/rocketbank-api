package ru.rocketbank.r2d2.activities;

import android.view.View;
import io.codetail.animation.SupportAnimator.SimpleAnimatorListener;

/* compiled from: StatusActivity.kt */
public final class StatusActivity$exitReveal$1 extends SimpleAnimatorListener {
    final /* synthetic */ View $view;

    StatusActivity$exitReveal$1(View view) {
        this.$view = view;
    }

    public final void onAnimationEnd() {
        this.$view.setVisibility(4);
    }
}
