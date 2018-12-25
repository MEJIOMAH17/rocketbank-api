package ru.rocketbank.core.pay.samsung;

import android.os.Bundle;
import com.samsung.android.sdk.samsungpay.v2.StatusListener;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: RxSPay.kt */
final class RxSPay$getSPayStatus$1<T> implements OnSubscribe<T> {
    final /* synthetic */ RxSPay this$0;

    RxSPay$getSPayStatus$1(RxSPay rxSPay) {
        this.this$0 = rxSPay;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        this.this$0.samsungPay.getSamsungPayStatus(new StatusListener() {
            public final void onSuccess(int i, Bundle bundle) {
                subscriber.onNext(new SPayStatus(i, bundle));
                subscriber.onCompleted();
            }

            public final void onFail(int i, Bundle bundle) {
                switch (bundle != null ? bundle.getInt("errorReason") : 0) {
                    case -357:
                        subscriber.onNext(new SPayStatus(-357, bundle));
                        return;
                    case -356:
                        subscriber.onNext(new SPayStatus(-356, bundle));
                        return;
                    default:
                        subscriber.onError(new SamsungPayException(i, bundle));
                        return;
                }
            }
        });
    }
}
