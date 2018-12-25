package ru.rocketbank.r2d2.shop.details;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.ShopItem;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$showItem$1 implements OnClickListener {
    final /* synthetic */ ShopItem $shopItem;
    final /* synthetic */ ShopDetailsActivity this$0;

    ShopDetailsActivity$showItem$1(ShopDetailsActivity shopDetailsActivity, ShopItem shopItem) {
        this.this$0 = shopDetailsActivity;
        this.$shopItem = shopItem;
    }

    public final void onClick(View view) {
        ShopDetailsPresenter shopDetailsPresenter = (ShopDetailsPresenter) this.this$0.getPresenter();
        ShopItem shopItem = this.$shopItem;
        Intrinsics.checkExpressionValueIsNotNull(shopItem, "shopItem");
        shopDetailsPresenter.addToCart(shopItem);
    }
}
