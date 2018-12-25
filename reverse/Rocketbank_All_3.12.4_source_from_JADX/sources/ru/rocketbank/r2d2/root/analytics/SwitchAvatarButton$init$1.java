package ru.rocketbank.r2d2.root.analytics;

import android.graphics.Bitmap;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SwitchAvatarButton.kt */
public final class SwitchAvatarButton$init$1 extends SimpleTarget<Bitmap> {
    final /* synthetic */ SwitchAvatarButton this$0;

    SwitchAvatarButton$init$1(SwitchAvatarButton switchAvatarButton) {
        this.this$0 = switchAvatarButton;
    }

    public final void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
        Intrinsics.checkParameterIsNotNull(bitmap, "resource");
        Intrinsics.checkParameterIsNotNull(glideAnimation, "glideAnimation");
        if (this.this$0.movingAvatar == null) {
            this.this$0.movingAvatar = bitmap;
        }
        if (this.this$0.staticAvatar == null) {
            this.this$0.staticAvatar = bitmap;
        }
        this.this$0.invalidate();
    }
}
