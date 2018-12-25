package ru.rocketbank.r2d2.root.feed;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.ResponseContainerData;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Subscriber;

/* compiled from: FeedPresenter.kt */
public final class FeedPresenter$onRequestDeclined$1 extends Subscriber<ResponseContainerData> {
    final /* synthetic */ FeedItem $feedItem;
    final /* synthetic */ FeedPresenter this$0;

    public final void onCompleted() {
    }

    FeedPresenter$onRequestDeclined$1(FeedPresenter feedPresenter, FeedItem feedItem) {
        this.this$0 = feedPresenter;
        this.$feedItem = feedItem;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.getFeed().hideProgress();
        this.this$0.refreshTop();
    }

    public final void onNext(ResponseContainerData responseContainerData) {
        Intrinsics.checkParameterIsNotNull(responseContainerData, "responseContainerData");
        this.this$0.getFeed().hideProgress();
        this.this$0.refreshTop();
        this.this$0.removeOperation(this.$feedItem);
    }
}
