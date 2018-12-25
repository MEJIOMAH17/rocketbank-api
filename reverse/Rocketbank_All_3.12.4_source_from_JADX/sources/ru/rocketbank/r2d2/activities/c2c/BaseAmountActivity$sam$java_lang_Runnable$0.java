package ru.rocketbank.r2d2.activities.c2c;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$sam$java_lang_Runnable$0 implements Runnable {
    private final /* synthetic */ Function0 function;

    BaseAmountActivity$sam$java_lang_Runnable$0(Function0 function0) {
        this.function = function0;
    }

    public final /* synthetic */ void run() {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(), "invoke(...)");
    }
}
