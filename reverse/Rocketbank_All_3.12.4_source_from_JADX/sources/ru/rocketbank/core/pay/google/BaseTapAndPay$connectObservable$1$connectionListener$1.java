package ru.rocketbank.core.pay.google;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import rx.Subscriber;

/* compiled from: BaseTapAndPay.kt */
public final class BaseTapAndPay$connectObservable$1$connectionListener$1 implements ConnectionCallbacks {
    final /* synthetic */ Subscriber $subscriber;
    final /* synthetic */ BaseTapAndPay$connectObservable$1 this$0;

    BaseTapAndPay$connectObservable$1$connectionListener$1(BaseTapAndPay$connectObservable$1 baseTapAndPay$connectObservable$1, Subscriber subscriber) {
        this.this$0 = baseTapAndPay$connectObservable$1;
        this.$subscriber = subscriber;
    }

    public final void onConnected(Bundle bundle) {
        this.this$0.this$0.googleApiClient.unregisterConnectionCallbacks(this);
        this.$subscriber.onNext(this.this$0.this$0.googleApiClient);
        this.$subscriber.onCompleted();
    }

    public final void onConnectionSuspended(int i) {
        this.this$0.this$0.googleApiClient.unregisterConnectionCallbacks(this);
    }
}
