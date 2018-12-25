package ru.rocketbank.r2d2.root.operation;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.ContextResponse;
import rx.Subscriber;

/* compiled from: RocketRubleOperationPresenter.kt */
public final class RocketRubleOperationPresenter$requestOperationDetail$1 extends Subscriber<ContextResponse> {
    final /* synthetic */ RocketRubleOperationPresenter this$0;

    public final void onCompleted() {
    }

    RocketRubleOperationPresenter$requestOperationDetail$1(RocketRubleOperationPresenter rocketRubleOperationPresenter) {
        this.this$0 = rocketRubleOperationPresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.refreshData();
    }

    public final void onNext(ContextResponse contextResponse) {
        this.this$0.setOperationFetched(contextResponse != null ? contextResponse.getOperation() : null);
        this.this$0.refreshData();
    }
}
