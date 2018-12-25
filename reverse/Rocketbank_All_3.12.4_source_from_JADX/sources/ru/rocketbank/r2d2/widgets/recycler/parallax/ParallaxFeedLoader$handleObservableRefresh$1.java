package ru.rocketbank.r2d2.widgets.recycler.parallax;

import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import rx.Subscriber;

/* compiled from: ParallaxFeedLoader.kt */
public final class ParallaxFeedLoader$handleObservableRefresh$1 extends Subscriber<FeedList> {
    final /* synthetic */ ParallaxFeedLoader this$0;

    public final void onCompleted() {
    }

    ParallaxFeedLoader$handleObservableRefresh$1(ParallaxFeedLoader parallaxFeedLoader) {
        this.this$0 = parallaxFeedLoader;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("FeedLoading", "Loading failed", th);
        th = this.this$0.getLoaderListener();
        if (th != null) {
            th.onRefreshDone();
        }
        this.this$0.isListLoadingInProgress = false;
    }

    public final void onNext(FeedList feedList) {
        Intrinsics.checkParameterIsNotNull(feedList, "result");
        if (feedList.feed != null) {
            List list = feedList.feed;
            Intrinsics.checkExpressionValueIsNotNull(list, "result.feed");
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ParallaxAdapter parallaxAdapter = this.this$0.getParallaxAdapter();
                Object obj = feedList.feed.get(i);
                Intrinsics.checkExpressionValueIsNotNull(obj, "result.feed[i]");
                parallaxAdapter.addDynamicFeedItem((FeedItem) obj);
            }
        }
        feedList = this.this$0.getLoaderListener();
        if (feedList != null) {
            feedList.onRefreshDone();
        }
        this.this$0.isListLoadingInProgress = false;
    }
}
