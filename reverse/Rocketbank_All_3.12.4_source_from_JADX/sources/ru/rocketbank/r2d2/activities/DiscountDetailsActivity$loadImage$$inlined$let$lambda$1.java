package ru.rocketbank.r2d2.activities;

import android.graphics.Bitmap;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DiscountDetailsActivity.kt */
public final class DiscountDetailsActivity$loadImage$$inlined$let$lambda$1 implements RequestListener<String, Bitmap> {
    final /* synthetic */ String $link$inlined;
    final /* synthetic */ DiscountDetailsActivity this$0;

    public final boolean onException(Exception exception, String str, Target<Bitmap> target, boolean z) {
        return false;
    }

    DiscountDetailsActivity$loadImage$$inlined$let$lambda$1(DiscountDetailsActivity discountDetailsActivity, String str) {
        this.this$0 = discountDetailsActivity;
        this.$link$inlined = str;
    }

    public final boolean onResourceReady(Bitmap bitmap, String str, Target<Bitmap> target, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(bitmap, "resource");
        DiscountDetailsActivity.access$getImageView$p(this.this$0).setImageBitmap(bitmap);
        this.this$0.changeToolbar(bitmap);
        return null;
    }
}
