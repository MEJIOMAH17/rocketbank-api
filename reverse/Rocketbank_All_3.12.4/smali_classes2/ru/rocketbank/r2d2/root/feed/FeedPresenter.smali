.class public final Lru/rocketbank/r2d2/root/feed/FeedPresenter;
.super Ljava/lang/Object;
.source "FeedPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedPresenter.kt\nru/rocketbank/r2d2/root/feed/FeedPresenter\n*L\n1#1,486:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;

.field private static final colorDrawables:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private actionSubscription:Lrx/Subscription;

.field private final activity:Landroid/app/Activity;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private cacheSubscription:Lrx/Subscription;

.field private changeSubscription:Lrx/Subscription;

.field private final feed:Lru/rocketbank/r2d2/root/feed/Feed;

.field private feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

.field public feedManager:Lru/rocketbank/core/manager/FeedManager;

.field private feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

.field private isFirstLaunch:Z

.field private isListLoadingInProgress:Z

.field private operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

.field private pageRefreshSubscription:Lrx/Subscription;

.field private pageRequestSubscription:Lrx/Subscription;

.field private searchString:Ljava/lang/String;

.field private sendMonthCashBackSubscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->Companion:Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;

    .line 480
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->colorDrawables:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lru/rocketbank/r2d2/root/feed/Feed;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/root/feed/FeedModel;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    const-string p1, "FeedPresenter"

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isFirstLaunch:Z

    return-void
.end method

.method public static final synthetic access$getActionSubscription$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Lrx/Subscription;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->actionSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getColorDrawables$cp()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->colorDrawables:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public static final synthetic access$getOperationLoader$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Lru/rocketbank/core/manager/loader/OperationLoader;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez p0, :cond_0

    const-string v0, "operationLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isListLoadingInProgress$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isListLoadingInProgress:Z

    return p0
.end method

.method public static final synthetic access$onRefreshedData(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/model/FeedList;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->onRefreshedData(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public static final synthetic access$setActionSubscription$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lrx/Subscription;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->actionSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isListLoadingInProgress:Z

    return-void
.end method

.method public static final synthetic access$setOperationLoader$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/manager/loader/OperationLoader;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    return-void
.end method

.method private final fillFromCache()V
    .locals 2

    .line 417
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->TAG:Ljava/lang/String;

    const-string v1, "fillFromCache"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_2

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->getCachedItems()Lrx/Observable;

    move-result-object v0

    .line 423
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 424
    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->cacheSubscription:Lrx/Subscription;

    return-void
.end method

.method private final handleObservable(Lrx/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->pageRefreshSubscription:Lrx/Subscription;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_2
    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->pageRefreshSubscription:Lrx/Subscription;

    .line 360
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->pageRequestSubscription:Lrx/Subscription;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 361
    :cond_3
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->pageRequestSubscription:Lrx/Subscription;

    .line 363
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {v1}, Lru/rocketbank/r2d2/root/feed/Feed;->hideNotFound()V

    const/4 v1, 0x1

    .line 365
    iput-boolean v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isListLoadingInProgress:Z

    .line 369
    new-instance v1, Lru/rocketbank/core/network/model/FeedItem;

    sget-object v2, Lru/rocketbank/r2d2/root/feed/FeedFragment;->Companion:Lru/rocketbank/r2d2/root/feed/FeedFragment$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/feed/FeedFragment$Companion;->getOPERATION_LOADING()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    .line 370
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->addBottom(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 373
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->pageRequestSubscription:Lrx/Subscription;

    return-void
.end method

.method private final handleObservableRefresh(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleObservableRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->disableRefresh()V

    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/feed/Feed;->hideNotFound()V

    .line 327
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 328
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->pageRefreshSubscription:Lrx/Subscription;

    return-void
.end method

.method private final initialize()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isFirstLaunch:Z

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->chooseLoader()V

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->setLoader(Lru/rocketbank/core/manager/loader/OperationLoader;)V

    .line 116
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->fillFromCache()V

    .line 117
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->loadFirstPage()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isFirstLaunch:Z

    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isSearch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->showRegularFeed()V

    .line 122
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshTop()V

    :cond_2
    return-void
.end method

.method private final loadFirstPage()V
    .locals 2

    .line 307
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeBottom()V

    .line 308
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_1

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "operationLoader.loadPage\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->handleObservable(Lrx/Observable;)V

    return-void
.end method

.method private final loadNext()V
    .locals 2

    .line 312
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeBottom()V

    .line 313
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_1

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadNextPage()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "operationLoader.loadNext\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->handleObservable(Lrx/Observable;)V

    return-void
.end method

.method private final onRefreshedData(Lru/rocketbank/core/model/FeedList;)V
    .locals 5

    .line 435
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->clearTop()V

    .line 438
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isSearch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 439
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 440
    iget-object v1, p1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    const-string v2, "result.top"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 441
    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "result.top[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->addTopItem(Lru/rocketbank/core/network/model/FeedItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 447
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->addItems(Ljava/util/List;)V

    .line 451
    :cond_4
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lru/rocketbank/core/model/FeedList;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Pagination;->getTotalCount()I

    move-result p1

    if-nez p1, :cond_8

    .line 453
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez p1, :cond_6

    const-string v0, "operationLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/core/manager/loader/OperationLoader;->isSearch()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 454
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez p1, :cond_7

    const-string v0, "operationLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lru/rocketbank/core/manager/loader/OperationLoader;->getSearchString()Ljava/lang/String;

    move-result-object p1

    .line 456
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/feed/Feed;->showError(Ljava/lang/String;)V

    .line 461
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->disableRefresh()V

    return-void
.end method

.method private final setLoader(Lru/rocketbank/core/manager/loader/OperationLoader;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->changeSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->changeSubscription:Lrx/Subscription;

    .line 260
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    .line 262
    invoke-virtual {p1}, Lru/rocketbank/core/manager/loader/OperationLoader;->changeObservable()Lrx/Observable;

    move-result-object p1

    .line 263
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 264
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->changeSubscription:Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public final attachPresenter()V
    .locals 2

    .line 96
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    .line 97
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->initialize()V

    :cond_1
    return-void
.end method

.method public final chooseLoader()V
    .locals 3

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->searchString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v1, :cond_0

    const-string v2, "feedManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Lru/rocketbank/core/manager/FeedManager;->getSearchLoader(Ljava/lang/String;)Lru/rocketbank/core/manager/loader/OperationLoader;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v0, :cond_2

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/loader/OperationLoader;

    :goto_0
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    return-void
.end method

.method public final detachPresenter()V
    .locals 0

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getColorDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 291
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->colorDrawables:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 294
    sget-object v1, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->colorDrawables:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 297
    :cond_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFeed()Lru/rocketbank/r2d2/root/feed/Feed;
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    return-object v0
.end method

.method public final getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    return-object v0
.end method

.method public final getFeedManager()Lru/rocketbank/core/manager/FeedManager;
    .locals 2

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v0, :cond_0

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFeedModel()Lru/rocketbank/r2d2/root/feed/FeedModel;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    return-object v0
.end method

.method public final isSearch()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->isSearch()Z

    move-result v0

    return v0
.end method

.method public final loadNextPage()V
    .locals 2

    .line 404
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isListLoadingInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/OperationLoader;->isLastLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->loadNext()V

    :cond_1
    return-void
.end method

.method public final onRequestAccepted(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0434\u0435\u043d\u044c\u0433\u0438?"

    .line 226
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/network/model/FeedItem;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const p1, 0x1040013

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public final onRequestCancel(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 4

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/feed/Feed;->showProgressExecution()V

    .line 192
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 193
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v1, :cond_0

    const-string v2, "feedManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lru/rocketbank/core/manager/FeedManager;->cancelMoneyToFriend(J)Lrx/Observable;

    move-result-object v0

    .line 194
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 195
    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestCancel$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestCancel$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/network/model/FeedItem;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->actionSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onRequestDeclined(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 4

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/feed/Feed;->showProgressExecution()V

    .line 167
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 168
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v1, :cond_0

    const-string v2, "feedManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lru/rocketbank/core/manager/FeedManager;->declineMoneyToFriend(J)Lrx/Observable;

    move-result-object v0

    .line 169
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 170
    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestDeclined$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestDeclined$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/network/model/FeedItem;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->actionSubscription:Lrx/Subscription;

    return-void
.end method

.method public final refreshIfIsNeeded()V
    .locals 0

    .line 484
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->initialize()V

    return-void
.end method

.method public final refreshTop()V
    .locals 2

    .line 302
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->TAG:Ljava/lang/String;

    const-string v1, "refreshTop is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    if-nez v0, :cond_0

    const-string v1, "operationLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/OperationLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "operationLoader.loadPage\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->handleObservableRefresh(Lrx/Observable;)V

    return-void
.end method

.method public final removeOperation(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v0, :cond_0

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader;->removeFromCache(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 218
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeItem(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 220
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshTop()V

    return-void
.end method

.method public final sendMonthCashBack(Ljava/util/Set;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ")V"
        }
    .end annotation

    const-string v0, "selectedIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->showProgressExecution()V

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez p1, :cond_1

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/manager/FeedManager;->sendMonthCashBack(Ljava/util/List;)Lrx/Observable;

    move-result-object p1

    .line 143
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 144
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/network/model/FeedItem;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->sendMonthCashBackSubscription:Lrx/Subscription;

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setFeedAdapter(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    return-void
.end method

.method public final setFeedManager(Lru/rocketbank/core/manager/FeedManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    return-void
.end method

.method public final setFeedModel(Lru/rocketbank/r2d2/root/feed/FeedModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    return-void
.end method

.method public final showRegularFeed()V
    .locals 2

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->searchString:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v0, :cond_0

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/loader/OperationLoader;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->operationLoader:Lru/rocketbank/core/manager/loader/OperationLoader;

    .line 469
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeBottom()V

    .line 471
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feed:Lru/rocketbank/r2d2/root/feed/Feed;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/feed/Feed;->disableSearchMode()V

    .line 473
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 475
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->fillFromCache()V

    .line 476
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->loadFirstPage()V

    return-void
.end method

.method public final stashOperation(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v0, :cond_0

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/FeedManager;->stashOperation(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

.method public final updateSearchString(Ljava/lang/String;)V
    .locals 2

    const-string v0, "searchText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->searchString:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    if-nez v0, :cond_0

    const-string v1, "feedManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/FeedManager;->getSearchLoader(Ljava/lang/String;)Lru/rocketbank/core/manager/loader/OperationLoader;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->setLoader(Lru/rocketbank/core/manager/loader/OperationLoader;)V

    .line 413
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->loadFirstPage()V

    return-void
.end method
