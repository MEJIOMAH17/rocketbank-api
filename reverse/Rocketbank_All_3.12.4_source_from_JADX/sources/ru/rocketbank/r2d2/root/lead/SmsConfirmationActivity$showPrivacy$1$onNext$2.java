package ru.rocketbank.r2d2.root.lead;

import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.r2d2.registration.RegistrationActivity;
import rx.functions.Action0;

/* compiled from: SmsConfirmationActivity.kt */
final class SmsConfirmationActivity$showPrivacy$1$onNext$2 implements Action0 {
    final /* synthetic */ SmsConfirmationActivity$showPrivacy$1 this$0;

    SmsConfirmationActivity$showPrivacy$1$onNext$2(SmsConfirmationActivity$showPrivacy$1 smsConfirmationActivity$showPrivacy$1) {
        this.this$0 = smsConfirmationActivity$showPrivacy$1;
    }

    public final void call() {
        RegistrationActivity.startActivity(this.this$0.this$0);
        this.this$0.this$0.authorization.setStatus(RegistrationStatus.LeadStatus);
        this.this$0.this$0.saveUser(SmsConfirmationActivity.access$getSmsData$p(this.this$0.this$0));
        this.this$0.this$0.setResult(1);
        this.this$0.this$0.finish();
    }
}
