package ru.rocketbank.r2d2.payment;

/* compiled from: PaymentDetailsFragment.kt */
final class PaymentDetailsFragment$onViewCreated$1 implements Runnable {
    final /* synthetic */ IPaymentFieldWidget $firstField;

    PaymentDetailsFragment$onViewCreated$1(IPaymentFieldWidget iPaymentFieldWidget) {
        this.$firstField = iPaymentFieldWidget;
    }

    public final void run() {
        this.$firstField.showKeyboard();
    }
}
