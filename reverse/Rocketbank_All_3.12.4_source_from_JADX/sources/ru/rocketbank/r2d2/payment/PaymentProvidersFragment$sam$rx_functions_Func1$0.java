package ru.rocketbank.r2d2.payment;

import kotlin.jvm.functions.Function1;
import rx.functions.Func1;

/* compiled from: PaymentProvidersFragment.kt */
final class PaymentProvidersFragment$sam$rx_functions_Func1$0 implements Func1 {
    private final /* synthetic */ Function1 function;

    PaymentProvidersFragment$sam$rx_functions_Func1$0(Function1 function1) {
        this.function = function1;
    }

    public final /* synthetic */ R call(T t) {
        return this.function.invoke(t);
    }
}
