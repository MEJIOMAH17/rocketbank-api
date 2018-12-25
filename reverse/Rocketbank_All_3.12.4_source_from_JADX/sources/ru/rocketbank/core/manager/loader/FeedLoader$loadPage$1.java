package ru.rocketbank.core.manager.loader;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.NanoFeedResult;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: FeedLoader.kt */
final class FeedLoader$loadPage$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ FeedLoader this$0;

    FeedLoader$loadPage$1(FeedLoader feedLoader) {
        this.this$0 = feedLoader;
    }

    public final Observable<NanoFeedResult> call(NanoFeedResult nanoFeedResult) {
        FeedLoader feedLoader = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(nanoFeedResult, "result");
        return feedLoader.merger(nanoFeedResult);
    }
}
