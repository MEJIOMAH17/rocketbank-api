package ru.rocketbank.r2d2.payment;

import rx.functions.Func1;

/* compiled from: PaymentProvidersFragment.kt */
final class PaymentProvidersFragment$subscribeSearchView$3<T, R> implements Func1<String, Boolean> {
    final /* synthetic */ PaymentProvidersFragment this$0;

    PaymentProvidersFragment$subscribeSearchView$3(PaymentProvidersFragment paymentProvidersFragment) {
        this.this$0 = paymentProvidersFragment;
    }

    public final boolean call(String str) {
        return this.this$0.providers != null ? true : null;
    }
}
