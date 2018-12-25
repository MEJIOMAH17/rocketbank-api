package ru.rocketbank.r2d2.payment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PaymentAmountFragment.kt */
final class PaymentAmountFragment$sam$java_lang_Runnable$0 implements Runnable {
    private final /* synthetic */ Function0 function;

    PaymentAmountFragment$sam$java_lang_Runnable$0(Function0 function0) {
        this.function = function0;
    }

    public final /* synthetic */ void run() {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(), "invoke(...)");
    }
}
