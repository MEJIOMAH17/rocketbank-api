package ru.rocketbank.r2d2.root.devidepayment.sp;

import ru.rocketbank.core.network.model.androidpay.OpcResponse;
import ru.rocketbank.core.pay.samsung.AddCardResult;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: SPAddCardPresenter.kt */
final class SPAddCardPresenter$addCard$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ SPAddCardPresenter this$0;

    SPAddCardPresenter$addCard$1(SPAddCardPresenter sPAddCardPresenter) {
        this.this$0 = sPAddCardPresenter;
    }

    public final Observable<AddCardResult> call(OpcResponse opcResponse) {
        return this.this$0.getSpay().addCard(opcResponse.getOpc());
    }
}
