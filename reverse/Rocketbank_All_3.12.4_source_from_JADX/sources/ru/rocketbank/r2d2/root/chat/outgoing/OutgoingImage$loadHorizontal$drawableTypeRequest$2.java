package ru.rocketbank.r2d2.root.chat.outgoing;

import android.net.Uri;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OutgoingImage.kt */
public final class OutgoingImage$loadHorizontal$drawableTypeRequest$2 implements RequestListener<Uri, GlideDrawable> {
    final /* synthetic */ OutgoingImage this$0;

    OutgoingImage$loadHorizontal$drawableTypeRequest$2(OutgoingImage outgoingImage) {
        this.this$0 = outgoingImage;
    }

    public final boolean onException(Exception exception, Uri uri, Target<GlideDrawable> target, boolean z) {
        Intrinsics.checkParameterIsNotNull(uri, "model");
        this.this$0.imageData.getProgressVisible().set(false);
        return false;
    }

    public final boolean onResourceReady(GlideDrawable glideDrawable, Uri uri, Target<GlideDrawable> target, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(glideDrawable, "resource");
        Intrinsics.checkParameterIsNotNull(uri, "model");
        Intrinsics.checkParameterIsNotNull(target, "target");
        this.this$0.imageData.getProgressVisible().set(false);
        return false;
    }
}
