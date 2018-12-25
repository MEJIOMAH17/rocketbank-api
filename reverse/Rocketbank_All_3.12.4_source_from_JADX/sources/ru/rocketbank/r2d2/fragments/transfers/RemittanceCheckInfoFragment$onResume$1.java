package ru.rocketbank.r2d2.fragments.transfers;

import rx.functions.Action1;

/* compiled from: RemittanceCheckInfoFragment.kt */
final class RemittanceCheckInfoFragment$onResume$1<T> implements Action1<Boolean> {
    final /* synthetic */ RemittanceCheckInfoFragment this$0;

    RemittanceCheckInfoFragment$onResume$1(RemittanceCheckInfoFragment remittanceCheckInfoFragment) {
        this.this$0 = remittanceCheckInfoFragment;
    }

    public final void call(Boolean bool) {
        this.this$0.updateNextButton(this.this$0);
    }
}
