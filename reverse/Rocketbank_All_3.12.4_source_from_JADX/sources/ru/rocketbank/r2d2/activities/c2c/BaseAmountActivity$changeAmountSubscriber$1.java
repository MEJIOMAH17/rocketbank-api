package ru.rocketbank.r2d2.activities.c2c;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$changeAmountSubscriber$1<T> implements Action1<Double> {
    final /* synthetic */ BaseAmountActivity this$0;

    BaseAmountActivity$changeAmountSubscriber$1(BaseAmountActivity baseAmountActivity) {
        this.this$0 = baseAmountActivity;
    }

    public final void call(Double d) {
        BaseAmountActivity baseAmountActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(d, "doubleAmount");
        baseAmountActivity.setAmount(d.doubleValue());
        this.this$0.checkAmount();
    }
}
