package ru.rocketbank.core.pay.google;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.tapandpay.TapAndPay;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;

/* compiled from: BaseTapAndPay.kt */
public abstract class BaseTapAndPay {
    private final int cardNetwork = 3;
    private final GoogleApiClient googleApiClient;
    private final TapAndPay tapAndPay;
    private final int tsp = 3;

    public BaseTapAndPay(GoogleApiClient googleApiClient, TapAndPay tapAndPay) {
        Intrinsics.checkParameterIsNotNull(googleApiClient, "googleApiClient");
        Intrinsics.checkParameterIsNotNull(tapAndPay, "tapAndPay");
        this.googleApiClient = googleApiClient;
        this.tapAndPay = tapAndPay;
    }

    protected final TapAndPay getTapAndPay() {
        return this.tapAndPay;
    }

    protected final Observable<GoogleApiClient> connectObservable() {
        Observable<GoogleApiClient> timeout = Observable.create(new BaseTapAndPay$connectObservable$1(this)).doOnUnsubscribe(new BaseTapAndPay$connectObservable$2(this)).timeout(30, TimeUnit.SECONDS);
        Intrinsics.checkExpressionValueIsNotNull(timeout, "Observable.create<Google…out(30, TimeUnit.SECONDS)");
        return timeout;
    }

    public static final /* synthetic */ void access$disconnectApiClient(BaseTapAndPay baseTapAndPay) {
        if (baseTapAndPay.googleApiClient.isConnected()) {
            baseTapAndPay.googleApiClient.disconnect();
        }
    }
}
