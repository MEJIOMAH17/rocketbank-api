package ru.rocketbank.r2d2.activities.safe;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import ru.rocketbank.core.network.model.RefillCardResponse;

/* compiled from: TransferActivity.kt */
final class TransferActivity$sendMoney$1 extends FunctionReference implements Function2<TransferActivity, RefillCardResponse, Unit> {
    public static final TransferActivity$sendMoney$1 INSTANCE = new TransferActivity$sendMoney$1();

    TransferActivity$sendMoney$1() {
        super(2);
    }

    public final String getName() {
        return "onSendMoneyResult";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(TransferActivity.class);
    }

    public final String getSignature() {
        return "onSendMoneyResult(Lru/rocketbank/core/network/model/RefillCardResponse;)V";
    }

    public final void invoke(TransferActivity transferActivity, RefillCardResponse refillCardResponse) {
        Intrinsics.checkParameterIsNotNull(transferActivity, "p1");
        Intrinsics.checkParameterIsNotNull(refillCardResponse, "p2");
        transferActivity.onSendMoneyResult(refillCardResponse);
    }
}
