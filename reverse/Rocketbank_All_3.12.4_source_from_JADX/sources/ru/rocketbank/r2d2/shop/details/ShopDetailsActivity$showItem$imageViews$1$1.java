package ru.rocketbank.r2d2.shop.details;

import android.view.View;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.ShopDetailsImageBinding;

/* compiled from: ShopDetailsActivity.kt */
public final class ShopDetailsActivity$showItem$imageViews$1$1 implements RequestListener<String, GlideDrawable> {
    final /* synthetic */ ShopDetailsImageBinding $imageBinding;

    ShopDetailsActivity$showItem$imageViews$1$1(ShopDetailsImageBinding shopDetailsImageBinding) {
        this.$imageBinding = shopDetailsImageBinding;
    }

    public final boolean onResourceReady(GlideDrawable glideDrawable, String str, Target<GlideDrawable> target, boolean z, boolean z2) {
        glideDrawable = this.$imageBinding.progressBar;
        Intrinsics.checkExpressionValueIsNotNull(glideDrawable, "imageBinding.progressBar");
        View view = (View) glideDrawable;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
        return null;
    }

    public final boolean onException(Exception exception, String str, Target<GlideDrawable> target, boolean z) {
        exception = this.$imageBinding.progressBar;
        Intrinsics.checkExpressionValueIsNotNull(exception, "imageBinding.progressBar");
        View view = (View) exception;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
        return null;
    }
}
