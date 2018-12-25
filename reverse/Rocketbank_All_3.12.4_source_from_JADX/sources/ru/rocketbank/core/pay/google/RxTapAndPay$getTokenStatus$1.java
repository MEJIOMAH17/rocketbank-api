package ru.rocketbank.core.pay.google;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tapandpay.TapAndPay.GetTokenStatusResult;
import com.google.android.gms.tapandpay.issuer.TokenStatus;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.pay.google.RxTapAndPay.RxTokenState;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.functions.Func1;

/* compiled from: RxTapAndPay.kt */
final class RxTapAndPay$getTokenStatus$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ String $token;
    final /* synthetic */ RxTapAndPay this$0;

    RxTapAndPay$getTokenStatus$1(RxTapAndPay rxTapAndPay, String str) {
        this.this$0 = rxTapAndPay;
        this.$token = str;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        final GoogleApiClient googleApiClient = (GoogleApiClient) obj;
        return Observable.create(new OnSubscribe<T>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                final Subscriber subscriber = (Subscriber) obj;
                try {
                    this.this$0.getTapAndPay().getTokenStatus(googleApiClient, 3, this.$token).setResultCallback(new ResultCallback<GetTokenStatusResult>() {
                        public final /* bridge */ /* synthetic */ void onResult(Result result) {
                            Object pair;
                            GetTokenStatusResult getTokenStatusResult = (GetTokenStatusResult) result;
                            Intrinsics.checkParameterIsNotNull(getTokenStatusResult, "tokenResult");
                            Status status = getTokenStatusResult.getStatus();
                            Intrinsics.checkExpressionValueIsNotNull(status, "tokenResult.status");
                            if (status.isSuccess()) {
                                Object obj;
                                TokenStatus tokenStatus = getTokenStatusResult.getTokenStatus();
                                Intrinsics.checkExpressionValueIsNotNull(tokenStatus, "tokenResult.tokenStatus");
                                int tokenState = tokenStatus.getTokenState();
                                if (tokenState == 1) {
                                    obj = RxTokenState.UNTOKENIZED;
                                } else if (tokenState != 5) {
                                    obj = RxTokenState.OTHER;
                                } else {
                                    obj = RxTokenState.ACTIVE;
                                }
                                result = getTokenStatusResult.getTokenStatus();
                                Intrinsics.checkExpressionValueIsNotNull(result, "tokenResult.tokenStatus");
                                pair = new Pair(obj, Boolean.valueOf(result.isSelected()));
                            } else {
                                pair = new Pair(RxTokenState.NOT_FOUND, Boolean.FALSE);
                            }
                            subscriber.onNext(pair);
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
