package ru.rocketbank.r2d2.root.feed;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.app.AlertDialog.Builder;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.loader.OperationLoader;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: FeedPresenter.kt */
public final class FeedPresenter {
    public static final Companion Companion = new Companion();
    private static final SparseArrayCompat<ColorDrawable> colorDrawables = new SparseArrayCompat();
    private final String TAG = "FeedPresenter";
    private Subscription actionSubscription;
    private final Activity activity;
    public Authorization authorization;
    private Subscription cacheSubscription;
    private Subscription changeSubscription;
    private final Feed feed;
    private FeedAdapter feedAdapter;
    public FeedManager feedManager;
    private FeedModel feedModel;
    private boolean isFirstLaunch = true;
    private boolean isListLoadingInProgress;
    private OperationLoader operationLoader;
    private Subscription pageRefreshSubscription;
    private Subscription pageRequestSubscription;
    private String searchString;
    private Subscription sendMonthCashBackSubscription;

    /* compiled from: FeedPresenter.kt */
    public static final class Companion {
        private Companion() {
        }

        public final SparseArrayCompat<ColorDrawable> getColorDrawables() {
            return FeedPresenter.colorDrawables;
        }
    }

    public final void detachPresenter() {
    }

    public FeedPresenter(Activity activity, Feed feed, FeedAdapter feedAdapter, FeedModel feedModel) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(feed, "feed");
        Intrinsics.checkParameterIsNotNull(feedModel, "feedModel");
        this.activity = activity;
        this.feed = feed;
        this.feedAdapter = feedAdapter;
        this.feedModel = feedModel;
    }

    public static final /* synthetic */ OperationLoader access$getOperationLoader$p(FeedPresenter feedPresenter) {
        feedPresenter = feedPresenter.operationLoader;
        if (feedPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        return feedPresenter;
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final Feed getFeed() {
        return this.feed;
    }

    public final FeedAdapter getFeedAdapter() {
        return this.feedAdapter;
    }

    public final void setFeedAdapter(FeedAdapter feedAdapter) {
        this.feedAdapter = feedAdapter;
    }

    public final FeedModel getFeedModel() {
        return this.feedModel;
    }

    public final void setFeedModel(FeedModel feedModel) {
        Intrinsics.checkParameterIsNotNull(feedModel, "<set-?>");
        this.feedModel = feedModel;
    }

    public final boolean isSearch() {
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        return operationLoader.isSearch();
    }

    public final FeedManager getFeedManager() {
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        return feedManager;
    }

    public final void setFeedManager(FeedManager feedManager) {
        Intrinsics.checkParameterIsNotNull(feedManager, "<set-?>");
        this.feedManager = feedManager;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final void chooseLoader() {
        OperationLoader searchLoader;
        String str = this.searchString;
        if (str != null) {
            FeedManager feedManager = this.feedManager;
            if (feedManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedManager");
            }
            searchLoader = feedManager.getSearchLoader(str);
        } else {
            FeedManager feedManager2 = this.feedManager;
            if (feedManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedManager");
            }
            searchLoader = feedManager2.getFeedLoader();
        }
        this.operationLoader = searchLoader;
    }

    public final void attachPresenter() {
        this.feedManager = RocketApplication.Companion.getInjector().getFeedManager();
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        if (authorization.isAuthorized()) {
            initialize();
        }
    }

    private final void initialize() {
        if (this.isFirstLaunch) {
            chooseLoader();
            OperationLoader operationLoader = this.operationLoader;
            if (operationLoader == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
            }
            setLoader(operationLoader);
            fillFromCache();
            loadFirstPage();
            this.isFirstLaunch = false;
            return;
        }
        if (!isSearch()) {
            showRegularFeed();
            refreshTop();
        }
    }

    public final void sendMonthCashBack(Set<Long> set, FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(set, "selectedIds");
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        ArrayList arrayList = new ArrayList(set.size());
        for (Number longValue : set) {
            arrayList.add(Long.valueOf(longValue.longValue()));
        }
        this.feed.showProgressExecution();
        set = this.feedManager;
        if (set == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        this.sendMonthCashBackSubscription = set.sendMonthCashBack(arrayList).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new FeedPresenter$sendMonthCashBack$1(this, feedItem));
    }

    public final void onRequestDeclined(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.feed.showProgressExecution();
        Operation operation = (Operation) feedItem.getOperation();
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        if (operation == null) {
            Intrinsics.throwNpe();
        }
        this.actionSubscription = feedManager.declineMoneyToFriend(operation.getId()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new FeedPresenter$onRequestDeclined$1(this, feedItem));
    }

    public final void onRequestCancel(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.feed.showProgressExecution();
        Operation operation = (Operation) feedItem.getOperation();
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        if (operation == null) {
            Intrinsics.throwNpe();
        }
        this.actionSubscription = feedManager.cancelMoneyToFriend(operation.getId()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new FeedPresenter$onRequestCancel$1(this, feedItem));
    }

    public final void removeOperation(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        feedManager.getFeedLoader().removeFromCache(feedItem);
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.removeItem(feedItem);
        }
        refreshTop();
    }

    public final void onRequestAccepted(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        new Builder(this.activity).setMessage("Отправить деньги?").setPositiveButton(17039379, new FeedPresenter$onRequestAccepted$1(this, feedItem)).setNegativeButton(17039369, null).show();
    }

    private final void setLoader(OperationLoader operationLoader) {
        Subscription subscription = this.changeSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.changeSubscription = null;
        this.operationLoader = operationLoader;
        this.changeSubscription = operationLoader.changeObservable().observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new FeedPresenter$setLoader$1(this));
    }

    public final void stashOperation(FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        feedManager.stashOperation(feedItem);
    }

    public final Drawable getColorDrawable(int i) {
        ColorDrawable colorDrawable = (ColorDrawable) colorDrawables.get(i);
        if (colorDrawable == null) {
            colorDrawable = new ColorDrawable(i);
            colorDrawables.put(i, colorDrawable);
        }
        return colorDrawable;
    }

    public final void refreshTop() {
        Log.v(this.TAG, "refreshTop is called");
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        Observable observeOn = operationLoader.loadPage(1).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "operationLoader.loadPage…dSchedulers.mainThread())");
        handleObservableRefresh(observeOn);
    }

    private final void loadFirstPage() {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.removeBottom();
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        Observable observeOn = operationLoader.loadPage(1).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "operationLoader.loadPage…dSchedulers.mainThread())");
        handleObservable(observeOn);
    }

    private final void loadNext() {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.removeBottom();
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        Observable observeOn = operationLoader.loadNextPage().observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "operationLoader.loadNext…dSchedulers.mainThread())");
        handleObservable(observeOn);
    }

    private final void handleObservableRefresh(Observable<FeedList> observable) {
        Log.v(this.TAG, "handleObservableRefresh");
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        if (authorization.isAuthorized()) {
            this.feed.hideNotFound();
            this.pageRefreshSubscription = observable.observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new FeedPresenter$handleObservableRefresh$1(this));
            return;
        }
        this.feed.disableRefresh();
    }

    private final void handleObservable(Observable<FeedList> observable) {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        if (authorization.isAuthorized()) {
            Subscription subscription = this.pageRefreshSubscription;
            if (subscription != null) {
                subscription.unsubscribe();
            }
            this.pageRefreshSubscription = null;
            Subscription subscription2 = this.pageRequestSubscription;
            if (subscription2 != null) {
                subscription2.unsubscribe();
            }
            this.pageRequestSubscription = null;
            this.feed.hideNotFound();
            this.isListLoadingInProgress = true;
            FeedItem feedItem = new FeedItem(FeedFragment.Companion.getOPERATION_LOADING(), null);
            FeedAdapter feedAdapter = this.feedAdapter;
            if (feedAdapter == null) {
                Intrinsics.throwNpe();
            }
            feedAdapter.addBottom(feedItem);
            this.pageRequestSubscription = observable.subscribe((Subscriber) new FeedPresenter$handleObservable$1(this));
        }
    }

    public final void loadNextPage() {
        if (!this.isListLoadingInProgress) {
            OperationLoader operationLoader = this.operationLoader;
            if (operationLoader == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
            }
            if (!operationLoader.isLastLoaded()) {
                loadNext();
            }
        }
    }

    public final void updateSearchString(String str) {
        Intrinsics.checkParameterIsNotNull(str, "searchText");
        this.searchString = str;
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        setLoader(feedManager.getSearchLoader(str));
        loadFirstPage();
    }

    private final void fillFromCache() {
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
        }
        if (!operationLoader.isSearch()) {
            Log.v(this.TAG, "fillFromCache");
            operationLoader = this.operationLoader;
            if (operationLoader == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
            }
            this.cacheSubscription = operationLoader.getCachedItems().observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new FeedPresenter$fillFromCache$1(this));
        }
    }

    private final void onRefreshedData(FeedList feedList) {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.clearTop();
        if (!(isSearch() || feedList.top == null)) {
            List list = feedList.top;
            Intrinsics.checkExpressionValueIsNotNull(list, "result.top");
            int size = list.size();
            for (int i = 0; i < size; i++) {
                FeedAdapter feedAdapter2 = this.feedAdapter;
                if (feedAdapter2 == null) {
                    Intrinsics.throwNpe();
                }
                Object obj = feedList.top.get(i);
                Intrinsics.checkExpressionValueIsNotNull(obj, "result.top[i]");
                feedAdapter2.addTopItem((FeedItem) obj);
            }
        }
        List list2 = feedList.feed;
        if (list2 != null) {
            FeedAdapter feedAdapter3 = this.feedAdapter;
            if (feedAdapter3 == null) {
                Intrinsics.throwNpe();
            }
            feedAdapter3.addItems(list2);
        }
        if (feedList.feed != null && feedList.feed.size() == 0 && isSearch() && (feedList.pagination == null || feedList.pagination.getTotalCount() == null)) {
            feedList = this.operationLoader;
            if (feedList == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
            }
            if (feedList.isSearch() != null) {
                feedList = this.operationLoader;
                if (feedList == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("operationLoader");
                }
                this.feed.showError(feedList.getSearchString());
            }
        }
        this.feed.disableRefresh();
    }

    public final void showRegularFeed() {
        this.searchString = null;
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        this.operationLoader = feedManager.getFeedLoader();
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.removeBottom();
        this.feed.disableSearchMode();
        feedAdapter = this.feedAdapter;
        if (feedAdapter == null) {
            Intrinsics.throwNpe();
        }
        feedAdapter.notifyDataSetChanged();
        fillFromCache();
        loadFirstPage();
    }

    public final void refreshIfIsNeeded() {
        initialize();
    }
}
