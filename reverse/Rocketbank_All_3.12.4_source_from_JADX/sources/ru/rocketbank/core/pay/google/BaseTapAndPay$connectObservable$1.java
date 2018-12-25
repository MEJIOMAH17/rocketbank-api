package ru.rocketbank.core.pay.google;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: BaseTapAndPay.kt */
final class BaseTapAndPay$connectObservable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ BaseTapAndPay this$0;

    BaseTapAndPay$connectObservable$1(BaseTapAndPay baseTapAndPay) {
        this.this$0 = baseTapAndPay;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        if (this.this$0.googleApiClient.isConnected()) {
            if (this.this$0.googleApiClient.isConnecting()) {
                subscriber.onNext(this.this$0.googleApiClient);
                subscriber.onCompleted();
                return;
            }
        }
        final BaseTapAndPay$connectObservable$1$connectionListener$1 baseTapAndPay$connectObservable$1$connectionListener$1 = new BaseTapAndPay$connectObservable$1$connectionListener$1(this, subscriber);
        this.this$0.googleApiClient.registerConnectionCallbacks(baseTapAndPay$connectObservable$1$connectionListener$1);
        this.this$0.googleApiClient.registerConnectionFailedListener(new OnConnectionFailedListener() {
            public final void onConnectionFailed(ConnectionResult connectionResult) {
                Intrinsics.checkParameterIsNotNull(connectionResult, "failResult");
                this.this$0.googleApiClient.unregisterConnectionFailedListener(this);
                this.this$0.googleApiClient.unregisterConnectionCallbacks(baseTapAndPay$connectObservable$1$connectionListener$1);
                subscriber.onError(new GoogleApiConnectException(connectionResult.getErrorMessage()));
            }
        });
        this.this$0.googleApiClient.connect();
    }
}
