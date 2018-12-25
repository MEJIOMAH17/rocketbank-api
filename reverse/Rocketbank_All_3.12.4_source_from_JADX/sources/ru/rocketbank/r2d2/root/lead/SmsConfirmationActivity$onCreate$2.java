package ru.rocketbank.r2d2.root.lead;

import android.text.TextUtils;
import ru.rocketbank.core.receiver.SmsReceiver.SmsDelegate;

/* compiled from: SmsConfirmationActivity.kt */
final class SmsConfirmationActivity$onCreate$2 implements SmsDelegate {
    final /* synthetic */ SmsConfirmationActivity this$0;

    SmsConfirmationActivity$onCreate$2(SmsConfirmationActivity smsConfirmationActivity) {
        this.this$0 = smsConfirmationActivity;
    }

    public final void onSms(String str) {
        if (!TextUtils.isEmpty(str)) {
            SmsConfirmationActivity.access$getSmsInput$p(this.this$0).setCode(str);
        }
    }
}
