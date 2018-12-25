package ru.rocketbank.r2d2.shop.cart;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ShopCartAdapter.kt */
final class CartAdapterItemDeficit$ViewHolder$bind$1 implements OnClickListener {
    final /* synthetic */ CartAdapterItem $item;

    CartAdapterItemDeficit$ViewHolder$bind$1(CartAdapterItem cartAdapterItem) {
        this.$item = cartAdapterItem;
    }

    public final void onClick(View view) {
        view = this.$item.getOnClick();
        if (view != null) {
            view.invoke();
        }
    }
}
