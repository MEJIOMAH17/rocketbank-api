package ru.rocketbank.r2d2.root.devidepayment.ap;

import android.util.Log;
import rx.functions.Action1;

/* compiled from: APAddCardPresenter.kt */
final class APAddCardPresenter$getCardData$2<T> implements Action1<Throwable> {
    final /* synthetic */ APAddCardPresenter this$0;

    APAddCardPresenter$getCardData$2(APAddCardPresenter aPAddCardPresenter) {
        this.this$0 = aPAddCardPresenter;
    }

    public final void call(Throwable th) {
        this.this$0.getOpcSubscription.unsubscribe();
        APAddCardView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.hideProgress();
            access$getView$p.showError("Что-то пошло не так ¯\\_(ツ)_/¯");
        }
        Log.e(APAddCardPresenter.TAG, th.getMessage(), th);
    }
}
