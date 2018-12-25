package ru.rocketbank.r2d2.root.lead;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.SmsVerificationResponseData;
import rx.Subscriber;

/* compiled from: SmsConfirmationActivity.kt */
public final class SmsConfirmationActivity$verifyCode$1 extends Subscriber<SmsVerificationResponseData> {
    final /* synthetic */ SmsConfirmationActivity this$0;

    public final void onCompleted() {
    }

    SmsConfirmationActivity$verifyCode$1(SmsConfirmationActivity smsConfirmationActivity) {
        this.this$0 = smsConfirmationActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.handleError(th);
    }

    public final void onNext(SmsVerificationResponseData smsVerificationResponseData) {
        Intrinsics.checkParameterIsNotNull(smsVerificationResponseData, "smsVerificationResponseData");
        this.this$0.processResponseData(smsVerificationResponseData);
        this.this$0.hideProgressDialog();
    }
}
