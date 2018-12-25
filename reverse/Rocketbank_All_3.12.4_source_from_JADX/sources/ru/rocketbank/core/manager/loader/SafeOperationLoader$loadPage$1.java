package ru.rocketbank.core.manager.loader;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FeedManager.Companion;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.OperationsResponse;
import ru.rocketbank.core.model.OperationsResponse.SafeOperationList;
import ru.rocketbank.core.network.model.FeedItem;
import rx.functions.Func1;

/* compiled from: SafeOperationLoader.kt */
final class SafeOperationLoader$loadPage$1<T, R> implements Func1<T, R> {
    final /* synthetic */ SafeOperationLoader this$0;

    SafeOperationLoader$loadPage$1(SafeOperationLoader safeOperationLoader) {
        this.this$0 = safeOperationLoader;
    }

    public final FeedList call(OperationsResponse operationsResponse) {
        LinkedList linkedList = new LinkedList();
        FeedList feedList = new FeedList();
        if (operationsResponse != null) {
            int size;
            boolean z = false;
            if (operationsResponse.getFeed() != null) {
                SafeOperationList feed = operationsResponse.getFeed();
                if (feed == null) {
                    Intrinsics.throwNpe();
                }
                size = feed.size();
                Iterator it = feed.iterator();
                while (it.hasNext()) {
                    linkedList.add((FeedItem) it.next());
                }
            } else {
                size = 0;
            }
            feedList.pagination = operationsResponse.getPagination();
            if (this.this$0.isLastLoaded() == null) {
                operationsResponse = this.this$0;
                Companion companion = FeedManager.Companion;
                if (size < 30) {
                    z = true;
                }
                operationsResponse.setLastLoaded(z);
            }
        }
        feedList.feed = linkedList;
        feedList.top = (List) new LinkedList();
        return feedList;
    }
}
