package ru.rocketbank.core.utils;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action0;

/* compiled from: Interactor.kt */
final class Interactor$sam$rx_functions_Action0$0 implements Action0 {
    private final /* synthetic */ Function0 function;

    Interactor$sam$rx_functions_Action0$0(Function0 function0) {
        this.function = function0;
    }

    public final /* synthetic */ void call() {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(), "invoke(...)");
    }
}
