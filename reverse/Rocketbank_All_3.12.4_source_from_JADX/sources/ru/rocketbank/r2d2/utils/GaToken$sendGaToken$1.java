package ru.rocketbank.r2d2.utils;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: GaToken.kt */
final class GaToken$sendGaToken$1<T> implements OnSubscribe<T> {
    final /* synthetic */ Context $applicationContext;

    GaToken$sendGaToken$1(Context context) {
        this.$applicationContext = context;
    }

    public final void call(Subscriber<? super String> subscriber) {
        try {
            Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.$applicationContext.getApplicationContext());
            Intrinsics.checkExpressionValueIsNotNull(advertisingIdInfo, "adv");
            subscriber.onNext(advertisingIdInfo.getId());
            subscriber.onCompleted();
        } catch (Throwable th) {
            subscriber.onError(th);
        }
    }
}
