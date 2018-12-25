package ru.rocketbank.r2d2.shop.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.Cart;

/* compiled from: ShopFeedPresenter.kt */
final class ShopFeedPresenter$onItemsLoaded$1 extends Lambda implements Function1<Cart, Unit> {
    final /* synthetic */ ShopFeedPresenter this$0;

    ShopFeedPresenter$onItemsLoaded$1(ShopFeedPresenter shopFeedPresenter) {
        this.this$0 = shopFeedPresenter;
        super(1);
    }

    public final void invoke(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "it");
        this.this$0.onCartLoaded(cart);
    }
}
