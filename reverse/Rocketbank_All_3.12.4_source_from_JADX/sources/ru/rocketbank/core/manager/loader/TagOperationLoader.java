package ru.rocketbank.core.manager.loader;

import java.util.LinkedList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Observable;
import rx.schedulers.Schedulers;

/* compiled from: TagOperationLoader.kt */
public final class TagOperationLoader extends OperationLoader {
    private int currentPage;
    private boolean isLastLoaded;
    private final OperationApi operationApi;
    private final String tag;

    public final String getSearchString() {
        return null;
    }

    public final boolean isSearch() {
        return false;
    }

    public final void removeFromCache(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
    }

    public TagOperationLoader(OperationApi operationApi, String str) {
        Intrinsics.checkParameterIsNotNull(operationApi, "operationApi");
        Intrinsics.checkParameterIsNotNull(str, "tag");
        this.operationApi = operationApi;
        this.tag = str;
        setCurrentPage(null);
    }

    public final boolean isLastLoaded() {
        return this.isLastLoaded;
    }

    public final void setLastLoaded(boolean z) {
        this.isLastLoaded = z;
    }

    public final int getCurrentPage() {
        return this.currentPage;
    }

    public final void setCurrentPage(int i) {
        this.currentPage = i;
    }

    public final Observable<FeedList> loadPage(int i) {
        i = this.operationApi.operations(i, this.tag, null).subscribeOn(Schedulers.io()).map(new TagOperationLoader$loadPage$1(this)).doOnNext(new TagOperationLoader$loadPage$2(this, i));
        Intrinsics.checkExpressionValueIsNotNull(i, "operationApi.operations(…r\n            }\n        }");
        return i;
    }

    public final Observable<FeedList> loadNextPage() {
        return loadPage(getCurrentPage() + 1);
    }

    public final Observable<FeedList> getCachedItems() {
        FeedList feedList = new FeedList();
        feedList.feed = new LinkedList();
        feedList.top = new LinkedList();
        Observable<FeedList> just = Observable.just(feedList);
        Intrinsics.checkExpressionValueIsNotNull(just, "Observable.just(feedList)");
        return just;
    }
}
