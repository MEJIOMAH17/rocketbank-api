package ru.rocketbank.r2d2.shop.cart;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.r2d2.shop.cart.ShopCartContract.View;

/* compiled from: ShopCartPresenter.kt */
final class ShopCartPresenter$remove$1 extends Lambda implements Function1<Cart, Unit> {
    final /* synthetic */ CartItem $cartItem;
    final /* synthetic */ ShopCartPresenter this$0;

    ShopCartPresenter$remove$1(ShopCartPresenter shopCartPresenter, CartItem cartItem) {
        this.this$0 = shopCartPresenter;
        this.$cartItem = cartItem;
        super(1);
    }

    public final void invoke(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "it");
        View view = (View) this.this$0.getView();
        if (view != null) {
            view.onItemDeleted(this.$cartItem);
        }
        view = (View) this.this$0.getView();
        if (view != null) {
            view.updateAmount(cart.getAmount());
        }
        this.this$0.updateDeficit(cart.getDeficit(this.this$0.miles));
        if (cart.isEmpty() != null) {
            this.this$0.cartIsEmpty();
        }
    }
}
