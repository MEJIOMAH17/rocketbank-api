package ru.rocketbank.r2d2.root.devidepayment.ap;

import ru.rocketbank.core.network.model.androidpay.OpcResponse;
import rx.functions.Action1;

/* compiled from: APAddCardPresenter.kt */
final class APAddCardPresenter$getCardData$1<T> implements Action1<OpcResponse> {
    final /* synthetic */ APAddCardPresenter this$0;

    APAddCardPresenter$getCardData$1(APAddCardPresenter aPAddCardPresenter) {
        this.this$0 = aPAddCardPresenter;
    }

    public final void call(OpcResponse opcResponse) {
        APAddCardView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            String address = opcResponse.getAddress();
            String postIndex = opcResponse.getPostIndex();
            if (postIndex == null) {
                postIndex = "";
            }
            access$getView$p.onCardDataReady(address, postIndex, opcResponse.getOpc());
            access$getView$p.hideProgress();
        }
        this.this$0.getOpcSubscription.unsubscribe();
    }
}
