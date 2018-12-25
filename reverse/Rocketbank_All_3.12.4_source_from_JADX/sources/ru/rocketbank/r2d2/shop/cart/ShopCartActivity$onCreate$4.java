package ru.rocketbank.r2d2.shop.cart;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ShopCartActivity.kt */
final class ShopCartActivity$onCreate$4 implements OnClickListener {
    final /* synthetic */ ShopCartActivity this$0;

    ShopCartActivity$onCreate$4(ShopCartActivity shopCartActivity) {
        this.this$0 = shopCartActivity;
    }

    public final void onClick(View view) {
        ((ShopCartPresenter) this.this$0.getPresenter()).checkout();
    }
}
