package ru.rocketbank.core.manager.loader;

import ru.rocketbank.core.network.model.NanoFeedResult;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: FeedLoader.kt */
final class FeedLoader$merger$1<T> implements OnSubscribe<T> {
    final /* synthetic */ NanoFeedResult $nanoFeedResult;
    final /* synthetic */ FeedLoader this$0;

    FeedLoader$merger$1(FeedLoader feedLoader, NanoFeedResult nanoFeedResult) {
        this.this$0 = feedLoader;
        this.$nanoFeedResult = nanoFeedResult;
    }

    public final void call(Subscriber<? super NanoFeedResult> subscriber) {
        subscriber.onNext(this.this$0.feedCache.merge(this.$nanoFeedResult));
        subscriber.onCompleted();
    }
}
