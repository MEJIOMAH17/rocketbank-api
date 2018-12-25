package ru.rocketbank.r2d2.friends;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action2;

/* compiled from: ChooseFriendFragment.kt */
final class ChooseFriendAdapter$sam$rx_functions_Action2$0 implements Action2 {
    private final /* synthetic */ Function2 function;

    ChooseFriendAdapter$sam$rx_functions_Action2$0(Function2 function2) {
        this.function = function2;
    }

    public final /* synthetic */ void call(T1 t1, T2 t2) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(t1, t2), "invoke(...)");
    }
}
