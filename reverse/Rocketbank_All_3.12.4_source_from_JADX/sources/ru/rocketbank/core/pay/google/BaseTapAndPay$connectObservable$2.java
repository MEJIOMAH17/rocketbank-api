package ru.rocketbank.core.pay.google;

import rx.functions.Action0;

/* compiled from: BaseTapAndPay.kt */
final class BaseTapAndPay$connectObservable$2 implements Action0 {
    final /* synthetic */ BaseTapAndPay this$0;

    BaseTapAndPay$connectObservable$2(BaseTapAndPay baseTapAndPay) {
        this.this$0 = baseTapAndPay;
    }

    public final void call() {
        BaseTapAndPay.access$disconnectApiClient(this.this$0);
    }
}
