package ru.rocketbank.r2d2.shop.cart;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.shop.cart.CartAdapterItem.CartItemViewHolder;

/* compiled from: ShopCartAdapter.kt */
final class CartAdapterItem$CartItemViewHolder$bind$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CartAdapterItem $item;
    final /* synthetic */ CartItemViewHolder this$0;

    CartAdapterItem$CartItemViewHolder$bind$1(CartItemViewHolder cartItemViewHolder, CartAdapterItem cartAdapterItem) {
        this.this$0 = cartItemViewHolder;
        this.$item = cartAdapterItem;
        super(0);
    }

    public final void invoke() {
        this.this$0.bind(this.$item);
    }
}
