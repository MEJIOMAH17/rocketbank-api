package ru.rocketbank.r2d2.payment;

import ru.rocketbank.core.network.model.PaymentRequest;

/* compiled from: PaymentAmountFragment.kt */
final class PaymentAmountFragment$onNextButtonClick$1 implements Runnable {
    final /* synthetic */ PaymentRequest $requestData;
    final /* synthetic */ PaymentAmountFragment this$0;

    PaymentAmountFragment$onNextButtonClick$1(PaymentAmountFragment paymentAmountFragment, PaymentRequest paymentRequest) {
        this.this$0 = paymentAmountFragment;
        this.$requestData = paymentRequest;
    }

    public final void run() {
        this.this$0.pay(this.$requestData);
    }
}
