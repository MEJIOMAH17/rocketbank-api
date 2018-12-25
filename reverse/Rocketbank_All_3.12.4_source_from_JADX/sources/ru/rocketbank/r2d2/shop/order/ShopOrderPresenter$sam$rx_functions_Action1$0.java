package ru.rocketbank.r2d2.shop.order;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: ShopOrderPresenter.kt */
final class ShopOrderPresenter$sam$rx_functions_Action1$0 implements Action1 {
    private final /* synthetic */ Function1 function;

    ShopOrderPresenter$sam$rx_functions_Action1$0(Function1 function1) {
        this.function = function1;
    }

    public final /* synthetic */ void call(T t) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(t), "invoke(...)");
    }
}
