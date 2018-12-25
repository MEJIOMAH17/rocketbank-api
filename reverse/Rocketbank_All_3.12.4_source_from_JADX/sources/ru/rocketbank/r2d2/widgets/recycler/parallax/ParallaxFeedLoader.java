package ru.rocketbank.r2d2.widgets.recycler.parallax;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.loader.OperationLoader;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: ParallaxFeedLoader.kt */
public final class ParallaxFeedLoader extends OnScrollListener {
    private boolean isInitialized;
    private boolean isListLoadingInProgress;
    private ParallaxFeedLoaderListener loaderListener;
    private OperationLoader operationLoader;
    private Subscription pageRefreshSubscription;
    private Subscription pageRequestSubscription;
    private final ParallaxAdapter parallaxAdapter;

    /* compiled from: ParallaxFeedLoader.kt */
    public interface ParallaxFeedLoaderListener {
        void onRefreshDone();
    }

    public final void onResume() {
    }

    public ParallaxFeedLoader(ParallaxAdapter parallaxAdapter, OperationLoader operationLoader) {
        Intrinsics.checkParameterIsNotNull(parallaxAdapter, "parallaxAdapter");
        this.parallaxAdapter = parallaxAdapter;
        this.operationLoader = operationLoader;
    }

    public final ParallaxAdapter getParallaxAdapter() {
        return this.parallaxAdapter;
    }

    public final ParallaxFeedLoaderListener getLoaderListener() {
        return this.loaderListener;
    }

    public final void setLoaderListener(ParallaxFeedLoaderListener parallaxFeedLoaderListener) {
        this.loaderListener = parallaxFeedLoaderListener;
    }

    public final void setLoader(OperationLoader operationLoader) {
        this.isInitialized = false;
        this.isListLoadingInProgress = false;
        onPause();
        onResume();
        this.operationLoader = operationLoader;
        if (operationLoader != null) {
            init();
        }
    }

    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        recyclerView = recyclerView.getLayoutManager();
        if (recyclerView == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
        } else if (((LinearLayoutManager) recyclerView).findLastVisibleItemPosition() > this.parallaxAdapter.getItemCount() - 5) {
            requestNextPage();
        }
    }

    public final void onRefresh() {
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader != null) {
            Observable observeOn = operationLoader.loadPage(1).observeOn(AndroidSchedulers.mainThread());
            Intrinsics.checkExpressionValueIsNotNull(observeOn, "loader.loadPage(1).obser…dSchedulers.mainThread())");
            handleObservableRefresh(observeOn);
            return;
        }
        ParallaxFeedLoaderListener parallaxFeedLoaderListener = this.loaderListener;
        if (parallaxFeedLoaderListener != null) {
            parallaxFeedLoaderListener.onRefreshDone();
        }
    }

    public final void onPause() {
        Subscription subscription;
        if (this.pageRefreshSubscription != null) {
            subscription = this.pageRefreshSubscription;
            if (subscription == null) {
                Intrinsics.throwNpe();
            }
            if (!subscription.isUnsubscribed()) {
                subscription = this.pageRefreshSubscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                subscription.unsubscribe();
            }
        }
        if (this.pageRequestSubscription != null) {
            subscription = this.pageRequestSubscription;
            if (subscription == null) {
                Intrinsics.throwNpe();
            }
            if (!subscription.isUnsubscribed()) {
                subscription = this.pageRequestSubscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                subscription.unsubscribe();
            }
        }
    }

    private final void requestNextPage() {
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader == null) {
            Intrinsics.throwNpe();
        }
        if (!operationLoader.isLastLoaded()) {
            loadNext();
        }
    }

    private final void loadPage(int i) {
        if (this.isListLoadingInProgress) {
            i = this.loaderListener;
            if (i != 0) {
                i.onRefreshDone();
                return;
            }
            return;
        }
        OperationLoader operationLoader = this.operationLoader;
        if (operationLoader != null) {
            i = operationLoader.loadPage(i).observeOn(AndroidSchedulers.mainThread());
            Intrinsics.checkExpressionValueIsNotNull(i, "loader.loadPage(pageNumb…dSchedulers.mainThread())");
            handleObservable(i);
            return;
        }
        i = this.loaderListener;
        if (i != 0) {
            i.onRefreshDone();
        }
    }

    private final void loadNext() {
        if (!this.isListLoadingInProgress) {
            OperationLoader operationLoader = this.operationLoader;
            if (operationLoader != null) {
                Observable observeOn = operationLoader.loadNextPage().observeOn(AndroidSchedulers.mainThread());
                Intrinsics.checkExpressionValueIsNotNull(observeOn, "loader.loadNextPage().ob…dSchedulers.mainThread())");
                handleObservable(observeOn);
            }
        }
    }

    private final boolean handleObservable(Observable<FeedList> observable) {
        this.isInitialized = true;
        this.isListLoadingInProgress = true;
        this.parallaxAdapter.addBottom();
        this.pageRequestSubscription = observable.subscribe((Subscriber) new ParallaxFeedLoader$handleObservable$1(this));
        return true;
    }

    private final boolean handleObservableRefresh(Observable<FeedList> observable) {
        this.pageRefreshSubscription = observable.subscribe((Subscriber) new ParallaxFeedLoader$handleObservableRefresh$1(this));
        return true;
    }

    public final void init() {
        if (!this.isInitialized) {
            loadPage(1);
        }
    }
}
