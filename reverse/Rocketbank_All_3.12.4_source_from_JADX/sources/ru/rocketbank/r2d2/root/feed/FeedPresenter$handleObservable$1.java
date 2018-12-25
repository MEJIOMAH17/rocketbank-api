package ru.rocketbank.r2d2.root.feed;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FeedList;
import rx.Subscriber;

/* compiled from: FeedPresenter.kt */
public final class FeedPresenter$handleObservable$1 extends Subscriber<FeedList> {
    final /* synthetic */ FeedPresenter this$0;

    public final void onCompleted() {
    }

    FeedPresenter$handleObservable$1(FeedPresenter feedPresenter) {
        this.this$0 = feedPresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("FeedLoading", "Loading failed", th);
        th = this.this$0.getFeedAdapter();
        if (th == null) {
            Intrinsics.throwNpe();
        }
        th.removeBottom();
        if (this.this$0.isSearch() != null) {
            th = this.this$0.getFeedAdapter();
            if (th == null) {
                Intrinsics.throwNpe();
            }
            th.clear();
            this.this$0.getFeed().showError(FeedPresenter.access$getOperationLoader$p(this.this$0).getSearchString());
        }
    }

    public final void onNext(FeedList feedList) {
        Intrinsics.checkParameterIsNotNull(feedList, "result");
        FeedAdapter feedAdapter = this.this$0.getFeedAdapter();
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.removeBottom();
        this.this$0.isListLoadingInProgress = false;
        this.this$0.onRefreshedData(feedList);
    }
}
