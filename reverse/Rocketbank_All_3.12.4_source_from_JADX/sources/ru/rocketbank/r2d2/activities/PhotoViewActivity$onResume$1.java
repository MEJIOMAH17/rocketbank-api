package ru.rocketbank.r2d2.activities;

import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.davemorrissey.labs.subscaleview.ImageSource;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PhotoViewActivity.kt */
public final class PhotoViewActivity$onResume$1 extends SimpleTarget<File> {
    final /* synthetic */ PhotoViewActivity this$0;

    PhotoViewActivity$onResume$1(PhotoViewActivity photoViewActivity) {
        this.this$0 = photoViewActivity;
    }

    public final void onResourceReady(File file, GlideAnimation<? super File> glideAnimation) {
        Intrinsics.checkParameterIsNotNull(file, "resource");
        Intrinsics.checkParameterIsNotNull(glideAnimation, "glideAnimation");
        PhotoViewActivity.access$getImageView$p(this.this$0).setImage(ImageSource.uri(file.getAbsolutePath()));
    }
}
