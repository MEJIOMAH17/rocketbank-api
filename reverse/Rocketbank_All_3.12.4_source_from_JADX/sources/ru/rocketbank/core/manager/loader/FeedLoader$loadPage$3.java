package ru.rocketbank.core.manager.loader;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.network.model.NanoFeedResult;
import rx.functions.Action1;

/* compiled from: FeedLoader.kt */
final class FeedLoader$loadPage$3<T> implements Action1<NanoFeedResult> {
    final /* synthetic */ int $pageNumber;
    final /* synthetic */ FeedLoader this$0;

    FeedLoader$loadPage$3(FeedLoader feedLoader, int i) {
        this.this$0 = feedLoader;
        this.$pageNumber = i;
    }

    public final void call(NanoFeedResult nanoFeedResult) {
        String access$getTAG$cp = FeedLoader.TAG;
        StringBuilder stringBuilder = new StringBuilder("Process: ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkExpressionValueIsNotNull(currentThread, "Thread.currentThread()");
        stringBuilder.append(currentThread.getName());
        Log.v(access$getTAG$cp, stringBuilder.toString());
        if (this.$pageNumber == 1) {
            this.this$0.topItems.clear();
            Collection access$getTopItems$p = this.this$0.topItems;
            ArrayList arrayList = nanoFeedResult.top.list;
            Intrinsics.checkExpressionValueIsNotNull(arrayList, "nanoFeedResult.top.list");
            CollectionsKt__MutableCollectionsKt.addAll(access$getTopItems$p, arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        nanoFeedResult = nanoFeedResult.feed.list;
        Iterator it = nanoFeedResult.iterator();
        while (it.hasNext()) {
            FeedItem feedItem = (FeedItem) it.next();
            if (feedItem.getOperation() != null) {
                int indexOf = this.this$0.operationsList.indexOf(feedItem);
                if (indexOf < 0) {
                    AbstractOperation operation = feedItem.getOperation();
                    if (operation == null) {
                        Intrinsics.throwNpe();
                    }
                    if (operation.isVisible()) {
                        this.this$0.operationsList.add(feedItem);
                    } else {
                        arrayList2.add(feedItem);
                    }
                } else {
                    AbstractOperation operation2 = feedItem.getOperation();
                    if (operation2 == null) {
                        Intrinsics.throwNpe();
                    }
                    if (operation2.isVisible()) {
                        this.this$0.operationsList.set(indexOf, feedItem);
                    } else {
                        this.this$0.operationsList.remove(feedItem);
                        arrayList2.add(feedItem);
                    }
                    FeedLoader feedLoader = this.this$0;
                    Intrinsics.checkExpressionValueIsNotNull(feedItem, "feedItem");
                    feedLoader.notifyItemChange(feedItem);
                }
            }
        }
        nanoFeedResult.removeAll(arrayList2);
        nanoFeedResult = FeedLoader.TAG;
        StringBuilder stringBuilder2 = new StringBuilder("operationsList: ");
        stringBuilder2.append(this.this$0.operationsList.size());
        Log.v(nanoFeedResult, stringBuilder2.toString());
    }
}
