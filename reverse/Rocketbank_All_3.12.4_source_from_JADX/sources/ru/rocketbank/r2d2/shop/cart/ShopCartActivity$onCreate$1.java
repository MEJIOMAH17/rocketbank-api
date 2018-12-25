package ru.rocketbank.r2d2.shop.cart;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: ShopCartActivity.kt */
final class ShopCartActivity$onCreate$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ ShopCartActivity this$0;

    ShopCartActivity$onCreate$1(ShopCartActivity shopCartActivity) {
        this.this$0 = shopCartActivity;
        super(0);
    }

    public final void invoke() {
        ((ShopCartPresenter) this.this$0.getPresenter()).onInfoClick();
    }
}
