package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragmentKt$sam$rx_functions_Action1$0 implements Action1 {
    private final /* synthetic */ Function1 function;

    TransferBankFragmentKt$sam$rx_functions_Action1$0(Function1 function1) {
        this.function = function1;
    }

    public final /* synthetic */ void call(T t) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(t), "invoke(...)");
    }
}
