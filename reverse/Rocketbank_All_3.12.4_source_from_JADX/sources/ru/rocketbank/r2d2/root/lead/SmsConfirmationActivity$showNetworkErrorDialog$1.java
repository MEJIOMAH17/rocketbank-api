package ru.rocketbank.r2d2.root.lead;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: SmsConfirmationActivity.kt */
final class SmsConfirmationActivity$showNetworkErrorDialog$1 implements OnClickListener {
    final /* synthetic */ SmsConfirmationActivity this$0;

    SmsConfirmationActivity$showNetworkErrorDialog$1(SmsConfirmationActivity smsConfirmationActivity) {
        this.this$0 = smsConfirmationActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.showPrivacy();
    }
}
