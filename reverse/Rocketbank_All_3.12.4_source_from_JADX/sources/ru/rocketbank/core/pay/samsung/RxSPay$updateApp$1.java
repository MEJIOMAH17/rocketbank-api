package ru.rocketbank.core.pay.samsung;

import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;

/* compiled from: RxSPay.kt */
final class RxSPay$updateApp$1 implements OnSubscribe {
    final /* synthetic */ RxSPay this$0;

    RxSPay$updateApp$1(RxSPay rxSPay) {
        this.this$0 = rxSPay;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        CompletableSubscriber completableSubscriber = (CompletableSubscriber) obj;
        this.this$0.samsungPay.goToUpdatePage();
        completableSubscriber.onCompleted();
    }
}
