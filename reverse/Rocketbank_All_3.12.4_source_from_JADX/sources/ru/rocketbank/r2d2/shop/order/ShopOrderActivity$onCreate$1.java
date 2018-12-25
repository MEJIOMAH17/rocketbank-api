package ru.rocketbank.r2d2.shop.order;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ShopOrderActivity.kt */
final class ShopOrderActivity$onCreate$1 implements OnClickListener {
    final /* synthetic */ ShopOrderActivity this$0;

    ShopOrderActivity$onCreate$1(ShopOrderActivity shopOrderActivity) {
        this.this$0 = shopOrderActivity;
    }

    public final void onClick(View view) {
        ((ShopOrderPresenter) this.this$0.getPresenter()).confirm();
    }
}
