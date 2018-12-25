package ru.rocketbank.r2d2.charges.tax;

import rx.functions.Action1;

/* compiled from: TaxChargePaymentDetailsFragment.kt */
final class TaxChargesCheckFragment$onResume$1<T> implements Action1<Boolean> {
    final /* synthetic */ TaxChargesCheckFragment this$0;

    TaxChargesCheckFragment$onResume$1(TaxChargesCheckFragment taxChargesCheckFragment) {
        this.this$0 = taxChargesCheckFragment;
    }

    public final void call(Boolean bool) {
        this.this$0.updateNextButton();
    }
}
