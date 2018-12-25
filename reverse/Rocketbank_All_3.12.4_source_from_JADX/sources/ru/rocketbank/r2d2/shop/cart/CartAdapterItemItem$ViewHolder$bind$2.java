package ru.rocketbank.r2d2.shop.cart;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.r2d2.shop.cart.CartAdapterItemItem.ViewHolder;

/* compiled from: ShopCartAdapter.kt */
final class CartAdapterItemItem$ViewHolder$bind$2 implements OnClickListener {
    final /* synthetic */ CartItem $cartItem;
    final /* synthetic */ ViewHolder this$0;

    CartAdapterItemItem$ViewHolder$bind$2(ViewHolder viewHolder, CartItem cartItem) {
        this.this$0 = viewHolder;
        this.$cartItem = cartItem;
    }

    public final void onClick(View view) {
        view = this.this$0.getOnDeleteItemClick();
        if (view != null) {
            view.invoke(this.$cartItem);
        }
    }
}
