package ru.rocketbank.r2d2.charges.tax;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import ru.rocketbank.core.manager.AnalyticsManager;

/* compiled from: TaxChargePaymentDetailsFragment.kt */
final class TaxChargesCheckFragment$onResume$2 extends FunctionReference implements Function1<Throwable, Unit> {
    public static final TaxChargesCheckFragment$onResume$2 INSTANCE = new TaxChargesCheckFragment$onResume$2();

    TaxChargesCheckFragment$onResume$2() {
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
