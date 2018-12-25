package ru.rocketbank.r2d2.payment;

import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.network.model.OperatorResponse;
import rx.functions.Action1;

/* compiled from: PaymentDetailsFragment.kt */
final class PaymentDetailsFragment$onPaymentFieldChanged$1<T> implements Action1<OperatorResponse> {
    final /* synthetic */ DataManager $dataManager;
    final /* synthetic */ PaymentDetailsFragment this$0;

    PaymentDetailsFragment$onPaymentFieldChanged$1(PaymentDetailsFragment paymentDetailsFragment, DataManager dataManager) {
        this.this$0 = paymentDetailsFragment;
        this.$dataManager = dataManager;
    }

    public final void call(OperatorResponse operatorResponse) {
        operatorResponse = this.$dataManager.getProvider(operatorResponse.getProvider_id());
        if (operatorResponse != null) {
            this.this$0.provider = operatorResponse;
            this.this$0.updateProvider();
            this.this$0.checkProvider();
        }
    }
}
