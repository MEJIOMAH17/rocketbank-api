package ru.rocketbank.r2d2.shop.feed;

import android.view.View;
import android.widget.ProgressBar;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShopFeedViewHolder.kt */
public final class ShopFeedViewHolder$bind$2 implements RequestListener<String, GlideDrawable> {
    final /* synthetic */ ProgressBar $progressBar;

    ShopFeedViewHolder$bind$2(ProgressBar progressBar) {
        this.$progressBar = progressBar;
    }

    public final boolean onResourceReady(GlideDrawable glideDrawable, String str, Target<GlideDrawable> target, boolean z, boolean z2) {
        glideDrawable = this.$progressBar;
        Intrinsics.checkExpressionValueIsNotNull(glideDrawable, "progressBar");
        View view = (View) glideDrawable;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
        return null;
    }

    public final boolean onException(Exception exception, String str, Target<GlideDrawable> target, boolean z) {
        exception = this.$progressBar;
        Intrinsics.checkExpressionValueIsNotNull(exception, "progressBar");
        View view = (View) exception;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
        return null;
    }
}
