package ru.rocketbank.r2d2.root.devidepayment.ap;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Func1;

/* compiled from: APAddCardActivity.kt */
final class APAddCardActivity$onCardAddClicked$1<T, R> implements Func1<T, R> {
    final /* synthetic */ String $cardToken;
    final /* synthetic */ APAddCardActivity this$0;

    APAddCardActivity$onCardAddClicked$1(APAddCardActivity aPAddCardActivity, String str) {
        this.this$0 = aPAddCardActivity;
        this.$cardToken = str;
    }

    public final void call(String str) {
        ((APAddCardPresenter) this.this$0.getPresenter()).getCardData(this.$cardToken, (Intrinsics.areEqual(str, "PROD") ^ 1) != null ? Boolean.TRUE : null);
    }
}
