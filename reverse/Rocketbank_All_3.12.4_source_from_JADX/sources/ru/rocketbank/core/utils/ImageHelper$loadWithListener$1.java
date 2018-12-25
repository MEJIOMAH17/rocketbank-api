package ru.rocketbank.core.utils;

import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.ImageHelper.ImageLoadListener;

/* compiled from: ImageHelper.kt */
public final class ImageHelper$loadWithListener$1 implements RequestListener<String, GlideDrawable> {
    final /* synthetic */ ImageLoadListener $listener;

    ImageHelper$loadWithListener$1(ImageLoadListener imageLoadListener) {
        this.$listener = imageLoadListener;
    }

    public final boolean onResourceReady(GlideDrawable glideDrawable, String str, Target<GlideDrawable> target, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(glideDrawable, "resource");
        this.$listener.onLoad(glideDrawable);
        return null;
    }

    public final boolean onException(Exception exception, String str, Target<GlideDrawable> target, boolean z) {
        str = this.$listener;
        if (exception == null) {
            exception = new Exception("glide ¯\\_(ツ)_/¯");
        }
        str.onError(exception);
        return null;
    }
}
