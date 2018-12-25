package ru.rocketbank.r2d2.payment;

import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;

/* compiled from: PaymentFragment.kt */
final class PaymentFragment$onViewCreated$1 implements OnRefreshListener {
    final /* synthetic */ PaymentFragment this$0;

    PaymentFragment$onViewCreated$1(PaymentFragment paymentFragment) {
        this.this$0 = paymentFragment;
    }

    public final void onRefresh() {
        this.this$0.loadTemplates();
    }
}
