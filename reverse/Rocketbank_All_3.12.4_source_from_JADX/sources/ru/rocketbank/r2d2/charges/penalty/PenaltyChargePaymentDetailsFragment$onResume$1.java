package ru.rocketbank.r2d2.charges.penalty;

import rx.functions.Action1;

/* compiled from: PenaltyChargePaymentDetailsFragment.kt */
final class PenaltyChargePaymentDetailsFragment$onResume$1<T> implements Action1<Boolean> {
    final /* synthetic */ PenaltyChargePaymentDetailsFragment this$0;

    PenaltyChargePaymentDetailsFragment$onResume$1(PenaltyChargePaymentDetailsFragment penaltyChargePaymentDetailsFragment) {
        this.this$0 = penaltyChargePaymentDetailsFragment;
    }

    public final void call(Boolean bool) {
        this.this$0.updateNextButton();
    }
}
