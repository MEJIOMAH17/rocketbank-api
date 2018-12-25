package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$updateBin$2 extends Lambda implements Function2<BaseAmountActivity, Throwable, Unit> {
    public static final BaseAmountActivity$updateBin$2 INSTANCE = new BaseAmountActivity$updateBin$2();

    BaseAmountActivity$updateBin$2() {
        super(2);
    }

    public final void invoke(BaseAmountActivity baseAmountActivity, Throwable th) {
        Intrinsics.checkParameterIsNotNull(baseAmountActivity, "instance");
        Intrinsics.checkParameterIsNotNull(th, "response");
        baseAmountActivity.onBinResponseFailed(th);
    }
}
