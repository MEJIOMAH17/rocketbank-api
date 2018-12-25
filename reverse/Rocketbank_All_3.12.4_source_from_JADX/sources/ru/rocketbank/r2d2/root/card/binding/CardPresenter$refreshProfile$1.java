package ru.rocketbank.r2d2.root.card.binding;

import kotlin.jvm.functions.Function0;
import ru.rocketbank.core.network.model.UserResponse;
import rx.Subscriber;

/* compiled from: CardPresenter.kt */
public final class CardPresenter$refreshProfile$1 extends Subscriber<UserResponse> {
    final /* synthetic */ Function0 $onSuccess;
    final /* synthetic */ CardPresenter this$0;

    public final void onCompleted() {
    }

    CardPresenter$refreshProfile$1(CardPresenter cardPresenter, Function0 function0) {
        this.this$0 = cardPresenter;
        this.$onSuccess = function0;
    }

    public final void onError(Throwable th) {
        this.$onSuccess.invoke();
        th = this.this$0.refreshSubscription;
        if (th != null) {
            th.unsubscribe();
        }
    }

    public final void onNext(UserResponse userResponse) {
        this.$onSuccess.invoke();
        userResponse = this.this$0.refreshSubscription;
        if (userResponse != null) {
            userResponse.unsubscribe();
        }
    }
}
