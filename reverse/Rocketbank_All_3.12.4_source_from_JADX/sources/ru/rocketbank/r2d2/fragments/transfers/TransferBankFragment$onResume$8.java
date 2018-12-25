package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import ru.rocketbank.core.manager.AnalyticsManager;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onResume$8 extends FunctionReference implements Function1<Throwable, Unit> {
    public static final TransferBankFragment$onResume$8 INSTANCE = new TransferBankFragment$onResume$8();

    TransferBankFragment$onResume$8() {
        super(1);
    }

    public final String getName() {
        return "logException";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(AnalyticsManager.class);
    }

    public final String getSignature() {
        return "logException(Ljava/lang/Throwable;)V";
    }

    public final void invoke(Throwable th) {
        AnalyticsManager.logException(th);
    }
}
