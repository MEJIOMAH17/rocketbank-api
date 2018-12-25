.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ParallaxFeedLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;
    }
.end annotation


# instance fields
.field private isInitialized:Z

.field private isListLoadingInProgress:Z

.field private loaderListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

.field private operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

.field private pageRefreshSubscription:Lrx/Subscription;

.field private pageRequestSubscription:Lrx/Subscription;

.field private final parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/core/manager/loader/OperationLoader;)V
    .locals 1

    const-string v0, "parallaxAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    .line 15
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    return-void
.end method

.method public static final synthetic access$isInitialized$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isInitialized:Z

    return p0
.end method

.method public static final synthetic access$isListLoadingInProgress$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isListLoadingInProgress:Z

    return p0
.end method

.method public static final synthetic access$setInitialized$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isInitialized:Z

    return-void
.end method

.method public static final synthetic access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isListLoadingInProgress:Z

    return-void
.end method

.method private final handleObservable(Lrx/Observable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isInitialized:Z

    .line 108
    iput-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isListLoadingInProgress:Z

    .line 110
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addBottom()V

    .line 112
    new-instance v1, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservable$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservable$1;-><init>(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {p1, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRequestSubscription:Lrx/Subscription;

    return v0
.end method

.method private final handleObservableRefresh(Lrx/Observable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;)Z"
        }
    .end annotation

    .line 143
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;-><init>(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRefreshSubscription:Lrx/Subscription;

    const/4 p1, 0x1

    return p1
.end method

.method private final loadNext()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isListLoadingInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadNextPage()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "loader.loadNextPage().ob\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->handleObservable(Lrx/Observable;)Z

    :cond_1
    return-void
.end method

.method private final loadPage(I)V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isListLoadingInProgress:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->loaderListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;->onRefreshDone()V

    return-void

    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string v0, "loader.loadPage(pageNumb\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->handleObservable(Lrx/Observable;)Z

    return-void

    .line 91
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->loaderListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;->onRefreshDone()V

    return-void

    :cond_3
    return-void
.end method

.method private final requestNextPage()V
    .locals 1

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->isLastLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->loadNext()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getLoaderListener()Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->loaderListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

    return-object v0
.end method

.method public final getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    return-object v0
.end method

.method public final init()V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->loadPage(I)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRefreshSubscription:Lrx/Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRefreshSubscription:Lrx/Subscription;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRefreshSubscription:Lrx/Subscription;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 70
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRequestSubscription:Lrx/Subscription;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRequestSubscription:Lrx/Subscription;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->pageRequestSubscription:Lrx/Subscription;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_5
    return-void
.end method

.method public final onRefresh()V
    .locals 2

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "loader.loadPage(1).obser\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->handleObservableRefresh(Lrx/Observable;)Z

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->loaderListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;->onRefreshDone()V

    return-void

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 44
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 45
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->parallaxAdapter:Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    if-le p1, p2, :cond_1

    .line 47
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->requestNextPage()V

    :cond_1
    return-void
.end method

.method public final setLoader(Lru/rocketbank/core/manager/loader/OperationLoader;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isInitialized:Z

    .line 31
    iput-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->isListLoadingInProgress:Z

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->onPause()V

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->onResume()V

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->init()V

    :cond_0
    return-void
.end method

.method public final setLoaderListener(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->loaderListener:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

    return-void
.end method
