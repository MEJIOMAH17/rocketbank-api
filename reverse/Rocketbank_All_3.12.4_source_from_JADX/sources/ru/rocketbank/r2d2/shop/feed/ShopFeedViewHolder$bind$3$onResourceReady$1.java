package ru.rocketbank.r2d2.shop.feed;

import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.Palette;
import android.support.v7.graphics.Palette.PaletteAsyncListener;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.utils.MaterialUtils;

/* compiled from: ShopFeedViewHolder.kt */
final class ShopFeedViewHolder$bind$3$onResourceReady$1 implements PaletteAsyncListener {
    final /* synthetic */ ShopFeedViewHolder$bind$3 this$0;

    ShopFeedViewHolder$bind$3$onResourceReady$1(ShopFeedViewHolder$bind$3 shopFeedViewHolder$bind$3) {
        this.this$0 = shopFeedViewHolder$bind$3;
    }

    public final void onGenerated(Palette palette) {
        Intrinsics.checkParameterIsNotNull(palette, "it");
        if (VERSION.SDK_INT >= 23) {
            ImageView imageView = this.this$0.this$0.getBinding().textureView;
            Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.textureView");
            imageView.setForeground(MaterialUtils.INSTANCE.createRipple(palette, 0.75f, 0.75f, ContextCompat.getColor(this.this$0.$context, C0859R.color.discount_grey), true));
        }
    }
}
