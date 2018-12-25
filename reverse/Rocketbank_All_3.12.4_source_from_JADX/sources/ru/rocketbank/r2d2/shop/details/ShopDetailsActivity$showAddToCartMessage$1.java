package ru.rocketbank.r2d2.shop.details;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ShopDetailsActivity.kt */
final class ShopDetailsActivity$showAddToCartMessage$1 implements OnClickListener {
    final /* synthetic */ ShopDetailsActivity this$0;

    ShopDetailsActivity$showAddToCartMessage$1(ShopDetailsActivity shopDetailsActivity) {
        this.this$0 = shopDetailsActivity;
    }

    public final void onClick(View view) {
        ((ShopDetailsPresenter) this.this$0.getPresenter()).onCartButtonClick();
    }
}
