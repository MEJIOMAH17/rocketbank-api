package ru.rocketbank.r2d2.activities.safe;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: TransferActivity.kt */
final class TransferActivity$sendMoney$2 extends FunctionReference implements Function2<TransferActivity, Throwable, Unit> {
    public static final TransferActivity$sendMoney$2 INSTANCE = new TransferActivity$sendMoney$2();

    TransferActivity$sendMoney$2() {
        super(2);
    }

    public final String getName() {
        return "onSendMoneyError";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(TransferActivity.class);
    }

    public final String getSignature() {
        return "onSendMoneyError(Ljava/lang/Throwable;)V";
    }

    public final void invoke(TransferActivity transferActivity, Throwable th) {
        Intrinsics.checkParameterIsNotNull(transferActivity, "p1");
        Intrinsics.checkParameterIsNotNull(th, "p2");
        transferActivity.onSendMoneyError(th);
    }
}
