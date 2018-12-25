package ru.rocketbank.r2d2.shop.cart;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ShopCartPresenter.kt */
final class ShopCartPresenter$load$2 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ ShopCartPresenter this$0;

    ShopCartPresenter$load$2(ShopCartPresenter shopCartPresenter) {
        this.this$0 = shopCartPresenter;
        super(1);
    }

    public final void invoke(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "it");
        this.this$0.onLoadingError(th);
    }
}
