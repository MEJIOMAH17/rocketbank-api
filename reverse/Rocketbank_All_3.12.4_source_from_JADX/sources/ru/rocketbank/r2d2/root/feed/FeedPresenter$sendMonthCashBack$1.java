package ru.rocketbank.r2d2.root.feed;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.Empty;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Subscriber;

/* compiled from: FeedPresenter.kt */
public final class FeedPresenter$sendMonthCashBack$1 extends Subscriber<Empty> {
    final /* synthetic */ FeedItem $feedItem;
    final /* synthetic */ FeedPresenter this$0;

    public final void onCompleted() {
    }

    FeedPresenter$sendMonthCashBack$1(FeedPresenter feedPresenter, FeedItem feedItem) {
        this.this$0 = feedPresenter;
        this.$feedItem = feedItem;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.v(this.this$0.TAG, "Failed to choose month item", th);
        this.this$0.getFeed().hideProgress();
        this.this$0.refreshTop();
    }

    public final void onNext(Empty empty) {
        Intrinsics.checkParameterIsNotNull(empty, "empty");
        this.this$0.getFeed().hideProgress();
        this.this$0.removeOperation(this.$feedItem);
        this.this$0.refreshTop();
    }
}
