package ru.rocketbank.r2d2.activities;

import android.animation.Animator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.IAnimatorListener;

/* compiled from: AdminProfileActivity.kt */
public final class AdminProfileActivity$showAgent$2 extends IAnimatorListener {
    final /* synthetic */ AdminProfileActivity this$0;

    AdminProfileActivity$showAgent$2(AdminProfileActivity adminProfileActivity) {
        this.this$0 = adminProfileActivity;
    }

    public final void onAnimationEnd(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
        this.this$0.isScroll = true;
    }
}
