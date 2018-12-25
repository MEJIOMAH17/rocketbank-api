package ru.rocketbank.r2d2.shop.feed;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v7.graphics.Palette;
import android.support.v7.graphics.Palette.PaletteAsyncListener;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShopFeedViewHolder.kt */
public final class ShopFeedViewHolder$bind$3 extends SimpleTarget<Bitmap> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ShopFeedViewHolder this$0;

    ShopFeedViewHolder$bind$3(ShopFeedViewHolder shopFeedViewHolder, Context context) {
        this.this$0 = shopFeedViewHolder;
        this.$context = context;
    }

    public final void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
        Intrinsics.checkParameterIsNotNull(bitmap, "resource");
        this.this$0.getBinding().textureView.setImageBitmap(bitmap);
        Palette.from(bitmap).clearFilters().generate((PaletteAsyncListener) new ShopFeedViewHolder$bind$3$onResourceReady$1(this));
    }
}
