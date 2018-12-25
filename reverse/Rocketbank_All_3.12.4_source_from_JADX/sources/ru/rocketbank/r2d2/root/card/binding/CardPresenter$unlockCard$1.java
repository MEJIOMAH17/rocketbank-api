package ru.rocketbank.r2d2.root.card.binding;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.CardBlockResponse;
import rx.Subscriber;

/* compiled from: CardPresenter.kt */
public final class CardPresenter$unlockCard$1 extends Subscriber<CardBlockResponse> {
    final /* synthetic */ Function1 $onError;
    final /* synthetic */ Function0 $onSuccess;
    final /* synthetic */ CardPresenter this$0;

    public final void onCompleted() {
    }

    CardPresenter$unlockCard$1(CardPresenter cardPresenter, Function1 function1, Function0 function0) {
        this.this$0 = cardPresenter;
        this.$onError = function1;
        this.$onSuccess = function0;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.$onError.invoke(this.this$0.getErrorString(th));
        th = this.this$0.blockSubscription;
        if (th != null) {
            th.unsubscribe();
        }
    }

    public final void onNext(CardBlockResponse cardBlockResponse) {
        this.this$0.refreshProfile(this.$onSuccess);
        cardBlockResponse = this.this$0.blockSubscription;
        if (cardBlockResponse != null) {
            cardBlockResponse.unsubscribe();
        }
    }
}
