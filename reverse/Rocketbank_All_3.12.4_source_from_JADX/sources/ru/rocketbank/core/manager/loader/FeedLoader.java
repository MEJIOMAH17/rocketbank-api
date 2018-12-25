package ru.rocketbank.core.manager.loader;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.exceptions.NotLoggedIn;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.loader.cacher.FeedCache;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.network.model.NanoFeedResult;
import ru.rocketbank.core.user.Authorization;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: FeedLoader.kt */
public final class FeedLoader extends OperationLoader {
    public static final Companion Companion = new Companion();
    private static final String TAG = "FeedLoader";
    private final Authorization authorization;
    private final FeedCache feedCache = new FeedCache();
    private AtomicBoolean isLastReached = new AtomicBoolean(false);
    private int lastPageNumber;
    private final OperationApi operationApi;
    private final CopyOnWriteArrayList<FeedItem> operationsList = new CopyOnWriteArrayList();
    private final CopyOnWriteArrayList<FeedItem> topItems = new CopyOnWriteArrayList();

    /* compiled from: FeedLoader.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final String getSearchString() {
        return null;
    }

    public final boolean isSearch() {
        return false;
    }

    public final void setCurrentPage(int i) {
    }

    public final void setLastLoaded(boolean z) {
    }

    public final Authorization getAuthorization() {
        return this.authorization;
    }

    public FeedLoader(Authorization authorization, OperationApi operationApi) {
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(operationApi, "operationApi");
        this.authorization = authorization;
        this.operationApi = operationApi;
        this.isLastReached.set(false);
    }

    public final OperationApi getOperationApi() {
        return this.operationApi;
    }

    public final int getCurrentPage() {
        return this.lastPageNumber;
    }

    public final boolean isLastLoaded() {
        return this.isLastReached.get();
    }

    public final void removeFromCacheById(long j) {
        Collection arrayList = new ArrayList();
        for (Object next : this.operationsList) {
            AbstractOperation operation = ((FeedItem) next).getOperation();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            if ((operation.getId() == j ? 1 : null) != null) {
                arrayList.add(next);
            }
        }
        for (FeedItem feedItem : (List) arrayList) {
            Intrinsics.checkExpressionValueIsNotNull(feedItem, "it");
            removeFromCache(feedItem);
        }
    }

    public final void resetLastLoaded() {
        this.isLastReached.set(false);
    }

    private final Observable<NanoFeedResult> requestItems(int i) {
        Log.v(TAG, "Loading page ".concat(String.valueOf(i)));
        String token = this.authorization.getToken();
        if (token != null) {
            int operationsPerPage;
            OperationApi operationApi = this.operationApi;
            UserModel userImmediate = this.authorization.getUserImmediate();
            if (userImmediate != null) {
                operationsPerPage = userImmediate.getOperationsPerPage();
            } else {
                ru.rocketbank.core.manager.FeedManager.Companion companion = FeedManager.Companion;
                operationsPerPage = 30;
            }
            i = operationApi.getFeed(token, i, operationsPerPage);
            Intrinsics.checkExpressionValueIsNotNull(i, "operationApi.getFeed(tok….DEFAULT_PAGE_LOAD_LIMIT)");
            return i;
        }
        i = Observable.error((Throwable) new NotLoggedIn());
        Intrinsics.checkExpressionValueIsNotNull(i, "Observable.error(NotLoggedIn())");
        return i;
    }

    private final Observable<NanoFeedResult> merger(NanoFeedResult nanoFeedResult) {
        nanoFeedResult = Observable.create(new FeedLoader$merger$1(this, nanoFeedResult)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(nanoFeedResult, "Observable.create<NanoFe…dSchedulers.mainThread())");
        return nanoFeedResult;
    }

    public final boolean isLastReached(Pagination pagination) {
        Intrinsics.checkParameterIsNotNull(pagination, "pagination");
        this.lastPageNumber = Math.max(this.lastPageNumber, pagination.getCurrentPage());
        this.lastPageNumber = Math.min(this.lastPageNumber, pagination.getTotalPages());
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("lastPageNumber: ");
        stringBuilder.append(this.lastPageNumber);
        stringBuilder.append(" total ");
        stringBuilder.append(pagination.getTotalPages());
        stringBuilder.append(" current: ");
        stringBuilder.append(pagination.getCurrentPage());
        Log.v(str, stringBuilder.toString());
        return this.lastPageNumber == pagination.getTotalPages() ? true : null;
    }

    public final Observable<FeedList> loadPage(int i) {
        Log.v(TAG, "load operation:".concat(String.valueOf(i)));
        i = requestItems(i).flatMap(new FeedLoader$loadPage$1(this)).doOnNext(new FeedLoader$loadPage$2(this)).doOnNext(new FeedLoader$loadPage$3(this, i)).map(new FeedLoader$loadPage$4(this));
        Intrinsics.checkExpressionValueIsNotNull(i, "requestItems(pageNumber)…eedList\n                }");
        return i;
    }

    public final Observable<FeedList> loadNextPage() {
        if (!this.isLastReached.get()) {
            return loadPage(this.lastPageNumber + 1);
        }
        FeedList feedList = new FeedList();
        feedList.feed = new LinkedList();
        feedList.top = this.topItems;
        Observable<FeedList> just = Observable.just(feedList);
        Intrinsics.checkExpressionValueIsNotNull(just, "Observable.just(feedList)");
        return just;
    }

    public final Observable<FeedList> getCachedItems() {
        Observable<FeedList> subscribeOn = Observable.create(new FeedLoader$cachedItems$1(this)).subscribeOn(Schedulers.computation());
        Intrinsics.checkExpressionValueIsNotNull(subscribeOn, "Observable.create(Observ…Schedulers.computation())");
        return subscribeOn;
    }

    public final void removeFromCache(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.topItems.remove(feedItem);
        this.operationsList.remove(feedItem);
    }

    public final void onChangedComment(long j, String str) {
        Intrinsics.checkParameterIsNotNull(str, "comment");
        Collection arrayList = new ArrayList();
        Iterator it = this.topItems.iterator();
        while (true) {
            Object obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            AbstractOperation operation = ((FeedItem) next).getOperation();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            if (operation.getId() == j) {
                obj = 1;
            }
            if (obj != null) {
                arrayList.add(next);
            }
        }
        for (FeedItem feedItem : (List) arrayList) {
            Operation operation2 = (Operation) feedItem.getOperation();
            if (operation2 == null) {
                Intrinsics.throwNpe();
            }
            operation2.setComment(str);
            Intrinsics.checkExpressionValueIsNotNull(feedItem, "feedItem");
            notifyItemChange(feedItem);
        }
        arrayList = new ArrayList();
        for (Object next2 : this.operationsList) {
            operation = ((FeedItem) next2).getOperation();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            if ((operation.getId() == j ? 1 : null) != null) {
                arrayList.add(next2);
            }
        }
        for (FeedItem feedItem2 : (List) arrayList) {
            Operation operation3 = (Operation) feedItem2.getOperation();
            if (operation3 == null) {
                Intrinsics.throwNpe();
            }
            operation3.setComment(str);
            Intrinsics.checkExpressionValueIsNotNull(feedItem2, "feedItem");
            notifyItemChange(feedItem2);
        }
    }
}
