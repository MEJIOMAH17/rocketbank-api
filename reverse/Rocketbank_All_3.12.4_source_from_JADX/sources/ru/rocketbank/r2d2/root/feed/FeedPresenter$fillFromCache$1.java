package ru.rocketbank.r2d2.root.feed;

import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FeedList;
import rx.functions.Action1;

/* compiled from: FeedPresenter.kt */
final class FeedPresenter$fillFromCache$1<T> implements Action1<FeedList> {
    final /* synthetic */ FeedPresenter this$0;

    FeedPresenter$fillFromCache$1(FeedPresenter feedPresenter) {
        this.this$0 = feedPresenter;
    }

    public final void call(FeedList feedList) {
        String access$getTAG$p = this.this$0.TAG;
        StringBuilder stringBuilder = new StringBuilder("fillFromCache got: ");
        stringBuilder.append(feedList.feed.size());
        Log.v(access$getTAG$p, stringBuilder.toString());
        FeedAdapter feedAdapter = this.this$0.getFeedAdapter();
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        if (feedAdapter.isEmpty()) {
            feedAdapter = this.this$0.getFeedAdapter();
            if (feedAdapter == null) {
                Intrinsics.throwNpe();
            }
            feedAdapter.clear();
            feedAdapter = this.this$0.getFeedAdapter();
            if (feedAdapter == null) {
                Intrinsics.throwNpe();
            }
            List list = feedList.top;
            Intrinsics.checkExpressionValueIsNotNull(list, "feedList.top");
            feedList = feedList.feed;
            Intrinsics.checkExpressionValueIsNotNull(feedList, "feedList.feed");
            feedAdapter.addItems(list, feedList);
        }
    }
}
