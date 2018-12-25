package ru.rocketbank.r2d2.root.lead;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.SmsVerificationPhoneResponse;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: SmsConfirmationActivity.kt */
public final class SmsConfirmationActivity$verifyPhone$1 extends Subscriber<SmsVerificationPhoneResponse> {
    final /* synthetic */ SmsConfirmationActivity this$0;

    public final void onCompleted() {
    }

    SmsConfirmationActivity$verifyPhone$1(SmsConfirmationActivity smsConfirmationActivity) {
        this.this$0 = smsConfirmationActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.handleError(th);
        Log.e("ChangePhone", "failed", th);
    }

    public final void onNext(SmsVerificationPhoneResponse smsVerificationPhoneResponse) {
        Intrinsics.checkParameterIsNotNull(smsVerificationPhoneResponse, "smsVerificationPhoneResponse");
        this.this$0.processResponseData(smsVerificationPhoneResponse);
        this.this$0.hideProgressDialog();
        Toast.makeText((Context) this.this$0, C0859R.string.phone_number_was_changed, 0).show();
        this.this$0.setResult(1);
        this.this$0.finish();
    }
}
