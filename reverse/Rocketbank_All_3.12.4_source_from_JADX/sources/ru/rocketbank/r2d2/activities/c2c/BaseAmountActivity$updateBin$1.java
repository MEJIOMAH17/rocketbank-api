package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.BinResponseData;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$updateBin$1 extends Lambda implements Function2<BaseAmountActivity, BinResponseData, Unit> {
    public static final BaseAmountActivity$updateBin$1 INSTANCE = new BaseAmountActivity$updateBin$1();

    BaseAmountActivity$updateBin$1() {
        super(2);
    }

    public final void invoke(BaseAmountActivity baseAmountActivity, BinResponseData binResponseData) {
        Intrinsics.checkParameterIsNotNull(baseAmountActivity, "instance");
        Intrinsics.checkParameterIsNotNull(binResponseData, "response");
        baseAmountActivity.onBinResponse(binResponseData);
    }
}
