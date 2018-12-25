package ru.rocketbank.r2d2.root.feed;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Subscriber;

/* compiled from: FeedPresenter.kt */
public final class FeedPresenter$setLoader$1 extends Subscriber<FeedItem> {
    final /* synthetic */ FeedPresenter this$0;

    public final void onCompleted() {
    }

    FeedPresenter$setLoader$1(FeedPresenter feedPresenter) {
        this.this$0 = feedPresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(this.this$0.TAG, "Change failed", th);
        AnalyticsManager.logException(th);
    }

    public final void onNext(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        if (!(this.this$0.getFeedAdapter() == null || feedItem.getOperation() == null)) {
            AbstractOperation operation = feedItem.getOperation();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            FeedAdapter feedAdapter;
            if (operation.isVisible()) {
                feedAdapter = this.this$0.getFeedAdapter();
                if (feedAdapter == null) {
                    Intrinsics.throwNpe();
                }
                feedAdapter.changeItem(feedItem);
                return;
            }
            feedAdapter = this.this$0.getFeedAdapter();
            if (feedAdapter == null) {
                Intrinsics.throwNpe();
            }
            feedAdapter.removeItem(feedItem);
        }
    }
}
