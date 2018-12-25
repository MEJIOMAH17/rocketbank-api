package ru.rocketbank.r2d2.root.lead;

import rx.functions.Action0;

/* compiled from: SmsConfirmationActivity.kt */
final class SmsConfirmationActivity$showPrivacy$1$onNext$1 implements Action0 {
    final /* synthetic */ SmsConfirmationActivity$showPrivacy$1 this$0;

    SmsConfirmationActivity$showPrivacy$1$onNext$1(SmsConfirmationActivity$showPrivacy$1 smsConfirmationActivity$showPrivacy$1) {
        this.this$0 = smsConfirmationActivity$showPrivacy$1;
    }

    public final void call() {
        this.this$0.this$0.hideProgressDialog();
    }
}
