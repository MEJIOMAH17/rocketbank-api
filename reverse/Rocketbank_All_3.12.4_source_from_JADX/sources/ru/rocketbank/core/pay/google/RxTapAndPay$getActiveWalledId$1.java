package ru.rocketbank.core.pay.google;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tapandpay.TapAndPay.GetActiveWalletIdResult;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.functions.Func1;

/* compiled from: RxTapAndPay.kt */
final class RxTapAndPay$getActiveWalledId$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ RxTapAndPay this$0;

    RxTapAndPay$getActiveWalledId$1(RxTapAndPay rxTapAndPay) {
        this.this$0 = rxTapAndPay;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        final GoogleApiClient googleApiClient = (GoogleApiClient) obj;
        return Observable.create(new OnSubscribe<T>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                final Subscriber subscriber = (Subscriber) obj;
                try {
                    this.this$0.getTapAndPay().getActiveWalletId(googleApiClient).setResultCallback(new ResultCallback<GetActiveWalletIdResult>() {
                        public final /* bridge */ /* synthetic */ void onResult(Result result) {
                            GetActiveWalletIdResult getActiveWalletIdResult = (GetActiveWalletIdResult) result;
                            Intrinsics.checkParameterIsNotNull(getActiveWalletIdResult, "result");
                            Status status = getActiveWalletIdResult.getStatus();
                            Intrinsics.checkExpressionValueIsNotNull(status, "result.status");
                            subscriber.onNext(status.isSuccess() ? getActiveWalletIdResult.getActiveWalletId() : "");
                            subscriber.onCompleted();
                        }
                    });
                } catch (Throwable th) {
                    subscriber.onError(th);
                }
            }
        });
    }
}
