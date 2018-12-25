package ru.rocketbank.r2d2.root.feed;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FeedFragment.kt */
public final class FeedFragment$showAndLockSearch$1 implements AnimatorListener {
    final /* synthetic */ FeedFragment this$0;

    public final void onAnimationRepeat(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
    }

    FeedFragment$showAndLockSearch$1(FeedFragment feedFragment) {
        this.this$0 = feedFragment;
    }

    public final void onAnimationStart(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
        this.this$0.isToolbarAnimation = true;
    }

    public final void onAnimationEnd(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
        this.this$0.isToolbarAnimation = false;
    }

    public final void onAnimationCancel(Animator animator) {
        Intrinsics.checkParameterIsNotNull(animator, "animation");
        this.this$0.isToolbarAnimation = false;
    }
}
