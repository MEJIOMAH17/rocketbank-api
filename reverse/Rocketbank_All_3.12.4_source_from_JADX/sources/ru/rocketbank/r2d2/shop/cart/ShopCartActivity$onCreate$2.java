package ru.rocketbank.r2d2.shop.cart;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.CartItem;

/* compiled from: ShopCartActivity.kt */
final class ShopCartActivity$onCreate$2 extends Lambda implements Function1<CartItem, Unit> {
    final /* synthetic */ ShopCartActivity this$0;

    ShopCartActivity$onCreate$2(ShopCartActivity shopCartActivity) {
        this.this$0 = shopCartActivity;
        super(1);
    }

    public final void invoke(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "it");
        ((ShopCartPresenter) this.this$0.getPresenter()).onItemClick(cartItem);
    }
}
