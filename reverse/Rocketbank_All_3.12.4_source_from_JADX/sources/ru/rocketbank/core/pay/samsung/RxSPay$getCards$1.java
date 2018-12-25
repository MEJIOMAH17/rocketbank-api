package ru.rocketbank.core.pay.samsung;

import android.os.Bundle;
import com.samsung.android.sdk.samsungpay.v2.card.Card;
import com.samsung.android.sdk.samsungpay.v2.card.CardManager;
import com.samsung.android.sdk.samsungpay.v2.card.GetCardListener;
import java.util.List;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: RxSPay.kt */
final class RxSPay$getCards$1<T> implements OnSubscribe<T> {
    final /* synthetic */ RxSPay this$0;

    RxSPay$getCards$1(RxSPay rxSPay) {
        this.this$0 = rxSPay;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        CardManager cardManager = new CardManager(this.this$0.context, this.this$0.partnerInfo);
        Bundle bundle = new Bundle();
        bundle.putString("issuerName", this.this$0.issuerName);
        cardManager.getAllCards(bundle, new GetCardListener() {
            public final void onSuccess(List<? extends Card> list) {
                if (list != null) {
                    subscriber.onNext(list);
                    subscriber.onCompleted();
                    return;
                }
                subscriber.onNext(CollectionsKt__CollectionsKt.emptyList());
                subscriber.onCompleted();
            }

            public final void onFail(int i, Bundle bundle) {
                subscriber.onError(new SamsungPayException(i, bundle));
            }
        });
    }
}
