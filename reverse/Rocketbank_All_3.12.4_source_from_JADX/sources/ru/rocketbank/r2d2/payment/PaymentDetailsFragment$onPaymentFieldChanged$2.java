package ru.rocketbank.r2d2.payment;

import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: PaymentDetailsFragment.kt */
final class PaymentDetailsFragment$onPaymentFieldChanged$2<T> implements Action1<Throwable> {
    final /* synthetic */ IPaymentFieldWidget $widget;
    final /* synthetic */ PaymentDetailsFragment this$0;

    PaymentDetailsFragment$onPaymentFieldChanged$2(PaymentDetailsFragment paymentDetailsFragment, IPaymentFieldWidget iPaymentFieldWidget) {
        this.this$0 = paymentDetailsFragment;
        this.$widget = iPaymentFieldWidget;
    }

    public final void call(Throwable th) {
        this.$widget.setError(UIHelper.getErrorMessage(this.this$0.getContext(), th));
        this.this$0.provider = this.this$0.getPaymentProvider();
        this.this$0.updateProvider();
        this.this$0.checkProvider();
    }
}
