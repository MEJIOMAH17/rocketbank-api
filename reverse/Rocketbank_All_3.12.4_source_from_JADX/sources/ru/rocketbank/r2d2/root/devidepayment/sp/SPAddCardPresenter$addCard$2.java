package ru.rocketbank.r2d2.root.devidepayment.sp;

import ru.rocketbank.core.pay.samsung.AddCardResult;
import rx.functions.Action1;

/* compiled from: SPAddCardPresenter.kt */
final class SPAddCardPresenter$addCard$2<T> implements Action1<AddCardResult> {
    final /* synthetic */ SPAddCardPresenter this$0;

    SPAddCardPresenter$addCard$2(SPAddCardPresenter sPAddCardPresenter) {
        this.this$0 = sPAddCardPresenter;
    }

    public final void call(AddCardResult addCardResult) {
        addCardResult = this.this$0.view;
        if (addCardResult != null) {
            addCardResult.hideProgress();
            addCardResult.onCardAdded();
        }
    }
}
