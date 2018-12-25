package ru.rocketbank.r2d2.shop.details;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.Cart;
import ru.rocketbank.r2d2.shop.details.ShopDetailsContract.View;

/* compiled from: ShopDetailsPresenter.kt */
final class ShopDetailsPresenter$addToCart$1 extends Lambda implements Function1<Cart, Unit> {
    final /* synthetic */ ShopDetailsPresenter this$0;

    ShopDetailsPresenter$addToCart$1(ShopDetailsPresenter shopDetailsPresenter) {
        this.this$0 = shopDetailsPresenter;
        super(1);
    }

    public final void invoke(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "it");
        View view = (View) this.this$0.getView();
        if (view != null) {
            view.showAddToCartMessage();
        }
    }
}
