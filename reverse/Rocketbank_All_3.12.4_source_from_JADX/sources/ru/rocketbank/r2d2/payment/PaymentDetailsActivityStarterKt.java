package ru.rocketbank.r2d2.payment;

import android.content.Context;
import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeType;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.r2d2.charges.ChargePaymentDetailsActivity;
import ru.rocketbank.r2d2.charges.ChargePaymentDetailsActivity.Companion;

/* compiled from: PaymentDetailsActivityStarter.kt */
public final class PaymentDetailsActivityStarterKt {
    public static /* bridge */ /* synthetic */ void startPaymentActivity$default(Context context, Provider provider, Template template, Bundle bundle, Bundle bundle2, int i, Object obj) {
        if ((i & 8) != null) {
            bundle = null;
        }
        if ((i & 16) != 0) {
            bundle2 = null;
        }
        startPaymentActivity(context, provider, template, bundle, bundle2);
    }

    public static final void startPaymentActivity(Context context, Provider provider, Template template, Bundle bundle, Bundle bundle2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(provider, "provider");
        int id = provider.getId();
        Companion companion;
        String icon;
        if (id == ChargeType.PENALTY.getProviderID()) {
            companion = ChargePaymentDetailsActivity.Companion;
            icon = provider.getIcon();
            Intrinsics.checkExpressionValueIsNotNull(icon, "provider.icon");
            companion.start(context, icon, ChargeType.PENALTY, bundle, bundle2);
        } else if (id == ChargeType.TAX.getProviderID()) {
            companion = ChargePaymentDetailsActivity.Companion;
            icon = provider.getIcon();
            Intrinsics.checkExpressionValueIsNotNull(icon, "provider.icon");
            companion.start(context, icon, ChargeType.TAX, bundle, bundle2);
        } else {
            PaymentDetailsActivity.Companion.start(context, provider, bundle, template, bundle2);
        }
    }
}
