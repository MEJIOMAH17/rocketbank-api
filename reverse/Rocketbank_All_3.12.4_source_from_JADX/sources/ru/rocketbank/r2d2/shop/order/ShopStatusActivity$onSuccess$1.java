package ru.rocketbank.r2d2.shop.order;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.shop.Cart;

/* compiled from: ShopStatusActivity.kt */
final class ShopStatusActivity$onSuccess$1 extends Lambda implements Function1<Cart, Unit> {
    public static final ShopStatusActivity$onSuccess$1 INSTANCE = new ShopStatusActivity$onSuccess$1();

    ShopStatusActivity$onSuccess$1() {
        super(1);
    }

    public final void invoke(Cart cart) {
        Intrinsics.checkParameterIsNotNull(cart, "it");
    }
}
