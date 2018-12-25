package ru.rocketbank.r2d2.activities.operation;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.r2d2.activities.operation.OperationListActivity.FeedAdapter;
import rx.Subscriber;

/* compiled from: OperationListActivity.kt */
public final class OperationListActivity$loadNext$1 extends Subscriber<FeedList> {
    final /* synthetic */ OperationListActivity this$0;

    public final void onCompleted() {
    }

    OperationListActivity$loadNext$1(OperationListActivity operationListActivity) {
        this.this$0 = operationListActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        AnalyticsManager.logException(th);
        this.this$0.isListLoadingInProgress = false;
        OperationListActivity.access$getAdapter$p(this.this$0).removeBottom();
    }

    public final void onNext(FeedList feedList) {
        Intrinsics.checkParameterIsNotNull(feedList, "feedList");
        int i = 0;
        this.this$0.isListLoadingInProgress = false;
        List list = feedList.feed;
        Intrinsics.checkExpressionValueIsNotNull(list, "feedList.feed");
        int size = list.size();
        while (i < size) {
            FeedAdapter access$getAdapter$p = OperationListActivity.access$getAdapter$p(this.this$0);
            Object obj = feedList.feed.get(i);
            Intrinsics.checkExpressionValueIsNotNull(obj, "feedList.feed[i]");
            access$getAdapter$p.addItem((FeedItem) obj);
            i++;
        }
    }
}
