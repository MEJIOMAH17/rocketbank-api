package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.network.model.NanoFeedResult;
import rx.functions.Func1;

/* compiled from: FeedLoader.kt */
final class FeedLoader$loadPage$4<T, R> implements Func1<T, R> {
    final /* synthetic */ FeedLoader this$0;

    FeedLoader$loadPage$4(FeedLoader feedLoader) {
        this.this$0 = feedLoader;
    }

    public final FeedList call(NanoFeedResult nanoFeedResult) {
        FeedList feedList = new FeedList();
        if (nanoFeedResult != null) {
            feedList.feed = nanoFeedResult.feed.list;
            feedList.top = this.this$0.topItems;
            feedList.pagination = nanoFeedResult.pagination;
        }
        return feedList;
    }
}
