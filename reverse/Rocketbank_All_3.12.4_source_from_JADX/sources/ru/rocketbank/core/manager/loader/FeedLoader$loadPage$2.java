package ru.rocketbank.core.manager.loader;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.NanoFeedResult;
import rx.functions.Action1;

/* compiled from: FeedLoader.kt */
final class FeedLoader$loadPage$2<T> implements Action1<NanoFeedResult> {
    final /* synthetic */ FeedLoader this$0;

    FeedLoader$loadPage$2(FeedLoader feedLoader) {
        this.this$0 = feedLoader;
    }

    public final void call(NanoFeedResult nanoFeedResult) {
        AtomicBoolean access$isLastReached$p = this.this$0.isLastReached;
        FeedLoader feedLoader = this.this$0;
        nanoFeedResult = nanoFeedResult.pagination;
        Intrinsics.checkExpressionValueIsNotNull(nanoFeedResult, "result.pagination");
        access$isLastReached$p.set(feedLoader.isLastReached(nanoFeedResult));
    }
}
