package ru.rocketbank.r2d2.payment;

import ru.rocketbank.core.model.facade.Account;
import rx.functions.Action1;

/* compiled from: PaymentAmountFragment.kt */
final class PaymentAmountFragment$onResume$1<T> implements Action1<Account> {
    final /* synthetic */ PaymentAmountFragment this$0;

    PaymentAmountFragment$onResume$1(PaymentAmountFragment paymentAmountFragment) {
        this.this$0 = paymentAmountFragment;
    }

    public final void call(Account account) {
        this.this$0.onSelectAccount(account);
    }
}
