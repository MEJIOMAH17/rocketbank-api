package ru.rocketbank.r2d2.shop.details;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.r2d2.Utils;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$showItem$3 implements OnClickListener {
    final /* synthetic */ ShopItem $shopItem;
    final /* synthetic */ ShopDetailsActivity this$0;

    ShopDetailsActivity$showItem$3(ShopDetailsActivity shopDetailsActivity, ShopItem shopItem) {
        this.this$0 = shopDetailsActivity;
        this.$shopItem = shopItem;
    }

    public final void onClick(View view) {
        Utils.openUrl((Context) this.this$0, this.$shopItem.getSizes_table_url());
    }
}
