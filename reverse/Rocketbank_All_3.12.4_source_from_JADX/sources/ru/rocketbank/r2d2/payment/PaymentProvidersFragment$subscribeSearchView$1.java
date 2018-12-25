package ru.rocketbank.r2d2.payment;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: PaymentProvidersFragment.kt */
final class PaymentProvidersFragment$subscribeSearchView$1 extends FunctionReference implements Function1<Object, String> {
    public static final PaymentProvidersFragment$subscribeSearchView$1 INSTANCE = new PaymentProvidersFragment$subscribeSearchView$1();

    PaymentProvidersFragment$subscribeSearchView$1() {
        super(1);
    }

    public final String getName() {
        return "toString";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(CharSequence.class);
    }

    public final String getSignature() {
        return "toString()Ljava/lang/String;";
    }

    public final String invoke(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "p1");
        return charSequence.toString();
    }
}
