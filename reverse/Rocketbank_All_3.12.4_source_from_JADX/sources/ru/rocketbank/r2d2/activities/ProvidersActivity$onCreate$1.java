package ru.rocketbank.r2d2.activities;

import io.codetail.animation.SupportAnimator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ProvidersActivity.kt */
final class ProvidersActivity$onCreate$1 implements Runnable {
    final /* synthetic */ ProvidersActivity this$0;

    ProvidersActivity$onCreate$1(ProvidersActivity providersActivity) {
        this.this$0 = providersActivity;
    }

    public final void run() {
        this.this$0.animator = this.this$0.createAnimator(ProvidersActivity.access$getRootView$p(this.this$0));
        SupportAnimator access$getAnimator$p = this.this$0.animator;
        if (access$getAnimator$p == null) {
            Intrinsics.throwNpe();
        }
        access$getAnimator$p.start();
    }
}
