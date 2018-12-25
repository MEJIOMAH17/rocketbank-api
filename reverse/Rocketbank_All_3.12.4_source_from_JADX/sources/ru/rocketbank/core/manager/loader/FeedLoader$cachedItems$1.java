package ru.rocketbank.core.manager.loader;

import android.util.Log;
import ru.rocketbank.core.model.FeedList;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: FeedLoader.kt */
final class FeedLoader$cachedItems$1<T> implements OnSubscribe<FeedList> {
    final /* synthetic */ FeedLoader this$0;

    FeedLoader$cachedItems$1(FeedLoader feedLoader) {
        this.this$0 = feedLoader;
    }

    public final void call(Subscriber<? super FeedList> subscriber) {
        StringBuilder stringBuilder = new StringBuilder("operationsList(cache): ");
        stringBuilder.append(this.this$0.operationsList.size());
        Log.v("FeedManager", stringBuilder.toString());
        FeedList feedList = new FeedList();
        feedList.feed = this.this$0.operationsList;
        feedList.top = this.this$0.topItems;
        feedList.pagination = null;
        subscriber.onNext(feedList);
        subscriber.onCompleted();
    }
}
