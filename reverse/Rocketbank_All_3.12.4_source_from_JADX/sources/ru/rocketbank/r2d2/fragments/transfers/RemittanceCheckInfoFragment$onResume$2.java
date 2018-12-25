package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import ru.rocketbank.core.manager.AnalyticsManager;

/* compiled from: RemittanceCheckInfoFragment.kt */
final class RemittanceCheckInfoFragment$onResume$2 extends FunctionReference implements Function1<Throwable, Unit> {
    public static final RemittanceCheckInfoFragment$onResume$2 INSTANCE = new RemittanceCheckInfoFragment$onResume$2();

    RemittanceCheckInfoFragment$onResume$2() {
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
