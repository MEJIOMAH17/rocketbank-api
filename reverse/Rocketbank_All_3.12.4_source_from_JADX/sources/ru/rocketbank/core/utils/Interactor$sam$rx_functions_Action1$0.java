package ru.rocketbank.core.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: Interactor.kt */
final class Interactor$sam$rx_functions_Action1$0 implements Action1 {
    private final /* synthetic */ Function1 function;

    Interactor$sam$rx_functions_Action1$0(Function1 function1) {
        this.function = function1;
    }

    public final /* synthetic */ void call(T t) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(t), "invoke(...)");
    }
}
