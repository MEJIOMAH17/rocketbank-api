package ru.rocketbank.r2d2.payment;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.network.model.PaymentRequest;

/* compiled from: PaymentAmountFragment.kt */
final class PaymentAmountFragment$onCreateView$5 implements OnClickListener {
    final /* synthetic */ PaymentRequest $requestData;
    final /* synthetic */ PaymentAmountFragment this$0;

    PaymentAmountFragment$onCreateView$5(PaymentAmountFragment paymentAmountFragment, PaymentRequest paymentRequest) {
        this.this$0 = paymentAmountFragment;
        this.$requestData = paymentRequest;
    }

    public final void onClick(View view) {
        this.this$0.onNextButtonClick(this.$requestData);
    }
}
