package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.view.View;
import io.codetail.animation.SupportAnimator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketRubleInfoActivity.kt */
final class RocketRubleInfoActivity$onCreate$3 implements Runnable {
    final /* synthetic */ RocketRubleInfoActivity this$0;

    RocketRubleInfoActivity$onCreate$3(RocketRubleInfoActivity rocketRubleInfoActivity) {
        this.this$0 = rocketRubleInfoActivity;
    }

    public final void run() {
        RocketRubleInfoActivity rocketRubleInfoActivity = this.this$0;
        RocketRubleInfoActivity rocketRubleInfoActivity2 = this.this$0;
        View access$getMContentView$p = this.this$0.mContentView;
        if (access$getMContentView$p == null) {
            Intrinsics.throwNpe();
        }
        rocketRubleInfoActivity.animator = rocketRubleInfoActivity2.createAnimator(access$getMContentView$p);
        SupportAnimator access$getAnimator$p = this.this$0.animator;
        if (access$getAnimator$p == null) {
            Intrinsics.throwNpe();
        }
        access$getAnimator$p.start();
    }
}
