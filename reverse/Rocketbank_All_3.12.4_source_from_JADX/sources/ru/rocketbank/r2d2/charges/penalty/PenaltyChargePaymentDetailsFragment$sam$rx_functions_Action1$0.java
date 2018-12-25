package ru.rocketbank.r2d2.charges.penalty;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: PenaltyChargePaymentDetailsFragment.kt */
final class PenaltyChargePaymentDetailsFragment$sam$rx_functions_Action1$0 implements Action1 {
    private final /* synthetic */ Function1 function;

    PenaltyChargePaymentDetailsFragment$sam$rx_functions_Action1$0(Function1 function1) {
        this.function = function1;
    }

    public final /* synthetic */ void call(T t) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(t), "invoke(...)");
    }
}
