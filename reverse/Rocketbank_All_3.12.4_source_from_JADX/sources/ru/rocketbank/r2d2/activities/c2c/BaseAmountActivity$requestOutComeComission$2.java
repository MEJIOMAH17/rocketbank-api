package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$requestOutComeComission$2 extends Lambda implements Function2<BaseAmountActivity, Throwable, Unit> {
    public static final BaseAmountActivity$requestOutComeComission$2 INSTANCE = new BaseAmountActivity$requestOutComeComission$2();

    BaseAmountActivity$requestOutComeComission$2() {
        super(2);
    }

    public final void invoke(BaseAmountActivity baseAmountActivity, Throwable th) {
        Intrinsics.checkParameterIsNotNull(baseAmountActivity, "instance");
        Intrinsics.checkParameterIsNotNull(th, "response");
        baseAmountActivity.onCommissionFailed(th);
    }
}
