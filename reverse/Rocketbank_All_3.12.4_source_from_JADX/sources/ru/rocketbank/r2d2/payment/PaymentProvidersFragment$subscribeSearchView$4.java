package ru.rocketbank.r2d2.payment;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import rx.functions.Action1;

/* compiled from: PaymentProvidersFragment.kt */
final class PaymentProvidersFragment$subscribeSearchView$4<T> implements Action1<String> {
    final /* synthetic */ PaymentProvidersFragment this$0;

    PaymentProvidersFragment$subscribeSearchView$4(PaymentProvidersFragment paymentProvidersFragment) {
        this.this$0 = paymentProvidersFragment;
    }

    public final void call(String str) {
        PaymentProvidersFragment paymentProvidersFragment = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(str, ProviderField.TEXT);
        paymentProvidersFragment.filter(str);
    }
}
