package ru.rocketbank.r2d2.root.lead;

import ru.rocketbank.r2d2.fragments.AlertDialogFragment.OnPositiveListener;

/* compiled from: SmsConfirmationActivity.kt */
final class SmsConfirmationActivity$handleError$1 implements OnPositiveListener {
    final /* synthetic */ SmsConfirmationActivity this$0;

    SmsConfirmationActivity$handleError$1(SmsConfirmationActivity smsConfirmationActivity) {
        this.this$0 = smsConfirmationActivity;
    }

    public final void OnPositive() {
        this.this$0.finish();
    }
}
