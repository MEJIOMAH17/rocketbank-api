package ru.rocketbank.r2d2.root.devidepayment.sp;

import ru.rocketbank.core.pay.samsung.SamsungPayException;
import rx.functions.Action1;

/* compiled from: SPAddCardPresenter.kt */
final class SPAddCardPresenter$addCard$3<T> implements Action1<Throwable> {
    final /* synthetic */ SPAddCardPresenter this$0;

    SPAddCardPresenter$addCard$3(SPAddCardPresenter sPAddCardPresenter) {
        this.this$0 = sPAddCardPresenter;
    }

    public final void call(Throwable th) {
        SPAddCardView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.hideProgress();
            if ((th instanceof SamsungPayException) != null) {
                access$getView$p.onUserCancelled();
            } else {
                access$getView$p.onErrorAddCard("Произошла ошибка");
            }
        }
    }
}
