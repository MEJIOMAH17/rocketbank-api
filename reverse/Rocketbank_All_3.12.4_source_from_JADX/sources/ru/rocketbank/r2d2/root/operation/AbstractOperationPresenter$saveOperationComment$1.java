package ru.rocketbank.r2d2.root.operation;

import ru.rocketbank.core.model.ResponseModel;
import rx.Subscriber;

/* compiled from: AbstractOperationPresenter.kt */
public final class AbstractOperationPresenter$saveOperationComment$1 extends Subscriber<ResponseModel> {
    final /* synthetic */ String $comment;
    final /* synthetic */ AbstractOperationPresenter this$0;

    public final void onCompleted() {
    }

    AbstractOperationPresenter$saveOperationComment$1(AbstractOperationPresenter abstractOperationPresenter, String str) {
        this.this$0 = abstractOperationPresenter;
        this.$comment = str;
    }

    public final void onNext(ResponseModel responseModel) {
        responseModel = this.this$0.getUpdateListener();
        if (responseModel != null) {
            responseModel.onCommentUpdateFinished(true, this.$comment);
        }
        this.this$0.getFeedManager().getFeedLoader().onChangedComment(this.this$0.getOperationId(), this.$comment);
    }

    public final void onError(Throwable th) {
        th = this.this$0.getUpdateListener();
        if (th != null) {
            th.onError();
        }
        th = this.this$0.getUpdateListener();
        if (th != null) {
            th.onCommentUpdateFinished(false, this.$comment);
        }
    }
}
