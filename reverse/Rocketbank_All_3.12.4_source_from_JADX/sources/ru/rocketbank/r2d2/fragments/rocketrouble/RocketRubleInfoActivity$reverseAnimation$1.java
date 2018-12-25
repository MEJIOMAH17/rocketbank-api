package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.view.View;
import io.codetail.animation.SupportAnimator.AnimatorListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketRubleInfoActivity.kt */
public final class RocketRubleInfoActivity$reverseAnimation$1 implements AnimatorListener {
    final /* synthetic */ RocketRubleInfoActivity this$0;

    public final void onAnimationRepeat() {
    }

    public final void onAnimationStart() {
    }

    RocketRubleInfoActivity$reverseAnimation$1(RocketRubleInfoActivity rocketRubleInfoActivity) {
        this.this$0 = rocketRubleInfoActivity;
    }

    public final void onAnimationEnd() {
        View access$getMContentView$p = this.this$0.mContentView;
        if (access$getMContentView$p == null) {
            Intrinsics.throwNpe();
        }
        access$getMContentView$p.setVisibility(4);
        this.this$0.finish();
        this.this$0.overridePendingTransition(0, 0);
    }

    public final void onAnimationCancel() {
        this.this$0.finish();
    }
}
