package ru.rocketbank.r2d2.root.chat.outgoing;

import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OutgoingImage.kt */
public final class OutgoingImage$loadHorizontal$drawableTypeRequest$1 implements RequestListener<String, GlideDrawable> {
    final /* synthetic */ OutgoingImage this$0;

    OutgoingImage$loadHorizontal$drawableTypeRequest$1(OutgoingImage outgoingImage) {
        this.this$0 = outgoingImage;
    }

    public final boolean onException(Exception exception, String str, Target<GlideDrawable> target, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "model");
        this.this$0.imageData.getProgressVisible().set(false);
        return false;
    }

    public final boolean onResourceReady(GlideDrawable glideDrawable, String str, Target<GlideDrawable> target, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(glideDrawable, "resource");
        Intrinsics.checkParameterIsNotNull(str, "model");
        Intrinsics.checkParameterIsNotNull(target, "target");
        this.this$0.imageData.getProgressVisible().set(false);
        return false;
    }
}
