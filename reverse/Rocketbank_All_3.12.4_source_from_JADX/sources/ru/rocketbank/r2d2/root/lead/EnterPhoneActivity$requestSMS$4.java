package ru.rocketbank.r2d2.root.lead;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.exceptions.EnterPhoneException;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.model.register.DeviceRegisterData;
import ru.rocketbank.core.model.register.DeviceRegisterSmsVerification;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.lead.SmsConfirmationActivity.Companion;
import rx.Subscriber;

/* compiled from: EnterPhoneActivity.kt */
public final class EnterPhoneActivity$requestSMS$4 extends Subscriber<DeviceRegisterData> {
    final /* synthetic */ String $phoneNumber;
    final /* synthetic */ EnterPhoneActivity this$0;

    public final void onCompleted() {
    }

    EnterPhoneActivity$requestSMS$4(EnterPhoneActivity enterPhoneActivity, String str) {
        this.this$0 = enterPhoneActivity;
        this.$phoneNumber = str;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        if (th instanceof RocketResponseException) {
            GenericRequestResponseData genericRequestResponseData = ((RocketResponseException) th).getGenericRequestResponseData();
            if (genericRequestResponseData != null) {
                ResponseData response = genericRequestResponseData.getResponse();
                if (response != null && response.getShowIt()) {
                    Context context = this.this$0;
                    ResponseData response2 = genericRequestResponseData.getResponse();
                    Toast.makeText(context, response2 != null ? response2.getDescription() : null, 0).show();
                    AnalyticsManager.logException(new EnterPhoneException("fuuuuuuuuuuuck_server_error", th));
                }
            }
            Toast.makeText(this.this$0, C0859R.string.error_occur, 0).show();
            AnalyticsManager.logException(new EnterPhoneException("fuuuuuuuuuuuck_server_error", th));
        } else {
            Toast.makeText(this.this$0, C0859R.string.error_occur, 0).show();
            AnalyticsManager.logException(new EnterPhoneException("fuuuuuuuuuuuck", th));
        }
        EnterPhoneActivity.access$getButtonNext$p(this.this$0).setEnabled(true);
        this.this$0.hideProgressDialog();
    }

    public final void onNext(DeviceRegisterData deviceRegisterData) {
        String id;
        if (deviceRegisterData != null) {
            DeviceRegisterSmsVerification smsVerification = deviceRegisterData.getSmsVerification();
            if (smsVerification != null) {
                id = smsVerification.getId();
                if (id == null) {
                    deviceRegisterData = deviceRegisterData.getSmsVerification();
                    Intrinsics.checkExpressionValueIsNotNull(deviceRegisterData, "data.smsVerification");
                    Companion.startForResult$default(SmsConfirmationActivity.Companion, (Activity) this.this$0, deviceRegisterData.getId(), 8776, this.$phoneNumber, null, 16, null);
                } else {
                    Toast.makeText((Context) this.this$0, C0859R.string.server_failed_to_send_verity_code, 0).show();
                }
                this.this$0.hideProgressDialog();
            }
        }
        id = null;
        if (id == null) {
            Toast.makeText((Context) this.this$0, C0859R.string.server_failed_to_send_verity_code, 0).show();
        } else {
            deviceRegisterData = deviceRegisterData.getSmsVerification();
            Intrinsics.checkExpressionValueIsNotNull(deviceRegisterData, "data.smsVerification");
            Companion.startForResult$default(SmsConfirmationActivity.Companion, (Activity) this.this$0, deviceRegisterData.getId(), 8776, this.$phoneNumber, null, 16, null);
        }
        this.this$0.hideProgressDialog();
    }
}
