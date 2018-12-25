package ru.rocketbank.core.manager.loader;

import java.util.LinkedList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FeedManager.Companion;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.model.FeedItem;
import rx.Observable;
import rx.schedulers.Schedulers;

/* compiled from: SearchLoader.kt */
public final class SearchLoader extends OperationLoader {
    private int currentPage;
    private boolean isLastLoaded;
    private final OperationApi operationApi;
    private final String searchString;
    private final String token;

    public final boolean isSearch() {
        return true;
    }

    public final void removeFromCache(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
    }

    public SearchLoader(OperationApi operationApi, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(operationApi, "operationApi");
        Intrinsics.checkParameterIsNotNull(str, "searchString");
        this.operationApi = operationApi;
        this.searchString = str;
        this.token = str2;
        setCurrentPage(0);
        setLastLoaded(false);
    }

    public final String getSearchString() {
        return this.searchString;
    }

    public final int getCurrentPage() {
        return this.currentPage;
    }

    public final void setCurrentPage(int i) {
        this.currentPage = i;
    }

    public final boolean isLastLoaded() {
        return this.isLastLoaded;
    }

    public final void setLastLoaded(boolean z) {
        this.isLastLoaded = z;
    }

    public final Observable<FeedList> loadPage(int i) {
        OperationApi operationApi = this.operationApi;
        String str = this.token;
        String searchString = getSearchString();
        Companion companion = FeedManager.Companion;
        i = operationApi.search(str, searchString, i, 30).subscribeOn(Schedulers.io()).map(new SearchLoader$loadPage$1(this)).doOnNext(new SearchLoader$loadPage$2(this, i));
        Intrinsics.checkExpressionValueIsNotNull(i, "operationApi.search(toke…r\n            }\n        }");
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
