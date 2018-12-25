package ru.rocketbank.r2d2.shop.cart;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.Cart;

/* compiled from: ShopCartPresenter.kt */
final class ShopCartPresenter$load$1 extends Lambda implements Function1<Cart, Unit> {
    final /* synthetic */ ShopCartPresenter this$0;

    ShopCartPresenter$load$1(ShopCartPresenter shopCartPresenter) {
        this.this$0 = shopCartPresenter;
        super(1);
    }

    public final void invoke(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "it");
        this.this$0.onCartLoaded(cart);
    }
}
