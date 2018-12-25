package ru.rocketbank.r2d2.root.operation;

import ru.rocketbank.core.model.ResponseContainerData;
import rx.Subscriber;

/* compiled from: AbstractOperationPresenter.kt */
public final class AbstractOperationPresenter$decline$1 extends Subscriber<ResponseContainerData> {
    final /* synthetic */ AbstractOperationPresenter this$0;

    public final void onCompleted() {
    }

    AbstractOperationPresenter$decline$1(AbstractOperationPresenter abstractOperationPresenter) {
        this.this$0 = abstractOperationPresenter;
    }

    public final void onNext(ResponseContainerData responseContainerData) {
        this.this$0.closeActivity();
    }

    public final void onError(Throwable th) {
        th = this.this$0.getUpdateListener();
        if (th != null) {
            th.dispatchHideProgress();
        }
    }
}
