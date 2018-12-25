package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.response.CommissionStringResponse;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$requestOutComeComission$1 extends Lambda implements Function2<BaseAmountActivity, CommissionStringResponse, Unit> {
    public static final BaseAmountActivity$requestOutComeComission$1 INSTANCE = new BaseAmountActivity$requestOutComeComission$1();

    BaseAmountActivity$requestOutComeComission$1() {
        super(2);
    }

    public final void invoke(BaseAmountActivity baseAmountActivity, CommissionStringResponse commissionStringResponse) {
        Intrinsics.checkParameterIsNotNull(baseAmountActivity, "instance");
        Intrinsics.checkParameterIsNotNull(commissionStringResponse, "response");
        baseAmountActivity.onCommissionResult(commissionStringResponse);
    }
}
