package ru.rocketbank.r2d2.root.lead;

import java.net.ConnectException;
import java.net.UnknownHostException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.PrivacyResponse;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Subscriber;

/* compiled from: SmsConfirmationActivity.kt */
public final class SmsConfirmationActivity$showPrivacy$1 extends Subscriber<PrivacyResponse> {
    final /* synthetic */ SmsConfirmationActivity this$0;

    public final void onCompleted() {
    }

    SmsConfirmationActivity$showPrivacy$1(SmsConfirmationActivity smsConfirmationActivity) {
        this.this$0 = smsConfirmationActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideProgressDialog();
        if (th instanceof UnknownHostException) {
            this.this$0.showNetworkErrorDialog("Не удалось связяаться с сервером");
        } else if (th instanceof ConnectException) {
            this.this$0.showNetworkErrorDialog("Ошибка сети");
        } else if (th instanceof RocketResponseException) {
            this.this$0.showNetworkErrorDialog(((RocketResponseException) th).getDescription());
        } else {
            this.this$0.showNetworkErrorDialog("Произошла ошибка");
        }
    }

    public final void onNext(PrivacyResponse privacyResponse) {
        Intrinsics.checkParameterIsNotNull(privacyResponse, "privacyResponse");
        try {
            this.this$0.alertDialog = UIHelper.showPrivacyDialog(this.this$0, privacyResponse.getUrl(), new SmsConfirmationActivity$showPrivacy$1$onNext$1(this), new SmsConfirmationActivity$showPrivacy$1$onNext$2(this), new SmsConfirmationActivity$showPrivacy$1$onNext$3(this));
            this.this$0.showProgressDialog();
        } catch (PrivacyResponse privacyResponse2) {
            AnalyticsManager.logException((Throwable) privacyResponse2);
        }
    }
}
