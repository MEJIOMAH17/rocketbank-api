package ru.rocketbank.r2d2.activities;

import android.app.Activity;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.ResponseModel;
import ru.rocketbank.core.network.model.PhoneResponse;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.root.lead.SmsConfirmationActivity;
import rx.Subscriber;

/* compiled from: ChangePhoneActivity.kt */
public final class ChangePhoneActivity$onEventMainThread$2 extends Subscriber<PhoneResponse> {
    final /* synthetic */ ChangePhoneActivity this$0;

    public final void onCompleted() {
    }

    ChangePhoneActivity$onEventMainThread$2(ChangePhoneActivity changePhoneActivity) {
        this.this$0 = changePhoneActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        UIHelper.showSnackWithError(this.this$0.getFrameLayout(), th);
        this.this$0.hideProgressDialog();
    }

    public final void onNext(PhoneResponse phoneResponse) {
        Intrinsics.checkParameterIsNotNull(phoneResponse, "response");
        this.this$0.hideProgressDialog();
        if (phoneResponse.getResponse() != null) {
            ResponseModel response = phoneResponse.getResponse();
            if (response == null) {
                Intrinsics.throwNpe();
            }
            if (response.getStatus() != Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                View frameLayout = this.this$0.getFrameLayout();
                phoneResponse = phoneResponse.getResponse();
                if (phoneResponse == null) {
                    Intrinsics.throwNpe();
                }
                UIHelper.showSnack(frameLayout, phoneResponse.getDescription());
                return;
            }
        }
        if (phoneResponse.getSmsVerification() == null) {
            this.this$0.showRetryErrorSnackbarMessage();
            return;
        }
        ChangePhoneActivity changePhoneActivity = this.this$0;
        phoneResponse = phoneResponse.getSmsVerification();
        if (phoneResponse == null) {
            Intrinsics.throwNpe();
        }
        changePhoneActivity.smsVerificationId = phoneResponse.getId();
        RocketApplication.Companion.getInjector().getAnalyticsManager().phoneEnter();
        SmsConfirmationActivity.Companion.startForResult((Activity) this.this$0, this.this$0.smsVerificationId, 1, this.this$0.phoneNumber, SmsConfirmationActivity.MODE_VERIFY_PHONE);
    }
}
