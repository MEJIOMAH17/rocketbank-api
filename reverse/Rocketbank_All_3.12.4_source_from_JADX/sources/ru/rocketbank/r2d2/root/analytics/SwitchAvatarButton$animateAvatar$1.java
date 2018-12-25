package ru.rocketbank.r2d2.root.analytics;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SwitchAvatarButton.kt */
public final class SwitchAvatarButton$animateAvatar$1 implements AnimationListener {
    final /* synthetic */ boolean $isDoubleAvatar;
    final /* synthetic */ SwitchAvatarButton this$0;

    public final void onAnimationRepeat(Animation animation) {
        Intrinsics.checkParameterIsNotNull(animation, "animation");
    }

    public final void onAnimationStart(Animation animation) {
        Intrinsics.checkParameterIsNotNull(animation, "animation");
    }

    SwitchAvatarButton$animateAvatar$1(SwitchAvatarButton switchAvatarButton, boolean z) {
        this.this$0 = switchAvatarButton;
        this.$isDoubleAvatar = z;
    }

    public final void onAnimationEnd(Animation animation) {
        Intrinsics.checkParameterIsNotNull(animation, "animation");
        if (this.this$0.positionAnimator == animation) {
            this.this$0.setPosition(this.this$0.newAvatarPosition(this.$isDoubleAvatar));
            this.this$0.positionAnimator = null;
        }
    }
}
