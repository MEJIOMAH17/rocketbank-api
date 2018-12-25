package ru.rocketbank.r2d2.widgets.recycler.parallax;

import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import rx.Subscriber;

/* compiled from: ParallaxFeedLoader.kt */
public final class ParallaxFeedLoader$handleObservable$1 extends Subscriber<FeedList> {
    final /* synthetic */ ParallaxFeedLoader this$0;

    public final void onCompleted() {
    }

    ParallaxFeedLoader$handleObservable$1(ParallaxFeedLoader parallaxFeedLoader) {
        this.this$0 = parallaxFeedLoader;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("FeedLoading", "Loading failed", th);
        this.this$0.isInitialized = false;
        this.this$0.getParallaxAdapter().removeBottom();
        th = this.this$0.getLoaderListener();
        if (th != null) {
            th.onRefreshDone();
        }
        this.this$0.isListLoadingInProgress = false;
    }

    public final void onNext(FeedList feedList) {
        Intrinsics.checkParameterIsNotNull(feedList, "result");
        this.this$0.getParallaxAdapter().removeBottom();
        int i = 0;
        this.this$0.isListLoadingInProgress = false;
        if (feedList.feed != null) {
            List list = feedList.feed;
            Intrinsics.checkExpressionValueIsNotNull(list, "result.feed");
            int size = list.size();
            while (i < size) {
                ParallaxAdapter parallaxAdapter = this.this$0.getParallaxAdapter();
                Object obj = feedList.feed.get(i);
                Intrinsics.checkExpressionValueIsNotNull(obj, "result.feed[i]");
                parallaxAdapter.addDynamicFeedItem((FeedItem) obj);
                i++;
            }
        }
        feedList = this.this$0.getLoaderListener();
        if (feedList != null) {
            feedList.onRefreshDone();
        }
    }
}
