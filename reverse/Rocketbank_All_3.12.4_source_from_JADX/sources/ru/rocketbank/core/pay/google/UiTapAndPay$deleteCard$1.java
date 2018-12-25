package ru.rocketbank.core.pay.google;

import android.app.Activity;
import com.google.android.gms.common.api.GoogleApiClient;
import kotlin.Unit;
import ru.rocketbank.r2d2.root.devidepayment.ap.APManageCardActivity;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.functions.Func1;

/* compiled from: UiTapAndPay.kt */
final class UiTapAndPay$deleteCard$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ int $requestCode = APManageCardActivity.REQUEST_DELETE;
    final /* synthetic */ String $token;
    final /* synthetic */ UiTapAndPay this$0;

    UiTapAndPay$deleteCard$1(UiTapAndPay uiTapAndPay, Activity activity, String str) {
        this.this$0 = uiTapAndPay;
        this.$activity = activity;
        this.$token = str;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        final GoogleApiClient googleApiClient = (GoogleApiClient) obj;
        return Observable.create(new OnSubscribe<T>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                Subscriber subscriber = (Subscriber) obj;
                try {
                    this.this$0.getTapAndPay().requestDeleteToken(googleApiClient, this.$activity, this.$token, 3, APManageCardActivity.REQUEST_DELETE);
                    subscriber.onNext(Unit.INSTANCE);
                    subscriber.onCompleted();
                } catch (Throwable th) {
                    subscriber.onError(th);
                }
            }
        });
    }
}
