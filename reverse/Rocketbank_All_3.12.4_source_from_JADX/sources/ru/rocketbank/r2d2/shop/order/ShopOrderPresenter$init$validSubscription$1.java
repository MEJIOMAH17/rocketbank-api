package ru.rocketbank.r2d2.shop.order;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: ShopOrderPresenter.kt */
final class ShopOrderPresenter$init$validSubscription$1<T> implements Action1<Boolean> {
    final /* synthetic */ ShopOrderPresenter this$0;

    ShopOrderPresenter$init$validSubscription$1(ShopOrderPresenter shopOrderPresenter) {
        this.this$0 = shopOrderPresenter;
    }

    public final void call(Boolean bool) {
        ShopOrderPresenter shopOrderPresenter = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(bool, "it");
        shopOrderPresenter.updateConfirmButton(bool.booleanValue());
    }
}
