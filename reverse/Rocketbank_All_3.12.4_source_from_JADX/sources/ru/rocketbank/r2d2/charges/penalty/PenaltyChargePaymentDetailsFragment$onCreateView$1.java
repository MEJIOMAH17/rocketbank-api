package ru.rocketbank.r2d2.charges.penalty;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: PenaltyChargePaymentDetailsFragment.kt */
final class PenaltyChargePaymentDetailsFragment$onCreateView$1 implements OnCheckedChangeListener {
    final /* synthetic */ PenaltyChargePaymentDetailsFragment this$0;

    PenaltyChargePaymentDetailsFragment$onCreateView$1(PenaltyChargePaymentDetailsFragment penaltyChargePaymentDetailsFragment) {
        this.this$0 = penaltyChargePaymentDetailsFragment;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.this$0.penaltyCharge.setIKnowNum(Boolean.valueOf(z));
    }
}
