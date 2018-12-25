package ru.rocketbank.r2d2.root.lead;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketSMSInput.OnCodeInputListener;

/* compiled from: SmsConfirmationActivity.kt */
final class SmsConfirmationActivity$onCreate$1 implements OnCodeInputListener {
    final /* synthetic */ SmsConfirmationActivity this$0;

    SmsConfirmationActivity$onCreate$1(SmsConfirmationActivity smsConfirmationActivity) {
        this.this$0 = smsConfirmationActivity;
    }

    public final void onCode(String str) {
        SmsConfirmationActivity.access$getSmsInput$p(this.this$0).disableSmsInput();
        SmsConfirmationActivity smsConfirmationActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(str, "code");
        smsConfirmationActivity.requestSmsVerification(str);
    }
}
