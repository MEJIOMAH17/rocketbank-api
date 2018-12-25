package ru.rocketbank.r2d2.shop.feed;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.model.shop.ShopItem;

/* compiled from: ShopFeedViewHolder.kt */
final class ShopFeedViewHolder$bind$1 implements OnClickListener {
    final /* synthetic */ ShopItem $shopItem;
    final /* synthetic */ ShopFeedViewHolder this$0;

    ShopFeedViewHolder$bind$1(ShopFeedViewHolder shopFeedViewHolder, ShopItem shopItem) {
        this.this$0 = shopFeedViewHolder;
        this.$shopItem = shopItem;
    }

    public final void onClick(View view) {
        view = this.this$0.getOnItemClick();
        if (view != null) {
            view.invoke(this.$shopItem);
        }
    }
}
