.class public final Lru/rocketbank/core/manager/loader/FeedLoader;
.super Lru/rocketbank/core/manager/loader/OperationLoader;
.source "FeedLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/loader/FeedLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedLoader.kt\nru/rocketbank/core/manager/loader/FeedLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n624#2:204\n713#2,2:205\n1519#2,2:207\n624#2:209\n713#2,2:210\n1728#2:212\n624#2:213\n713#2,2:214\n1728#2:216\n*E\n*S KotlinDebug\n*F\n+ 1 FeedLoader.kt\nru/rocketbank/core/manager/loader/FeedLoader\n*L\n53#1:204\n53#1,2:205\n54#1,2:207\n184#1:209\n184#1,2:210\n185#1:212\n191#1:213\n191#1,2:214\n192#1:216\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/loader/FeedLoader$Companion;

.field private static final TAG:Ljava/lang/String; = "FeedLoader"


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final feedCache:Lru/rocketbank/core/manager/loader/cacher/FeedCache;

.field private isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastPageNumber:I

.field private final operationApi:Lru/rocketbank/core/network/api/OperationApi;

.field private final operationsList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final topItems:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/loader/FeedLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/loader/FeedLoader$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/loader/FeedLoader;->Companion:Lru/rocketbank/core/manager/loader/FeedLoader$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/network/api/OperationApi;)V
    .locals 1

    const-string v0, "authorization"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lru/rocketbank/core/manager/loader/OperationLoader;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->authorization:Lru/rocketbank/core/user/Authorization;

    iput-object p2, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    .line 42
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->topItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance p1, Lru/rocketbank/core/manager/loader/cacher/FeedCache;

    invoke-direct {p1}, Lru/rocketbank/core/manager/loader/cacher/FeedCache;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->feedCache:Lru/rocketbank/core/manager/loader/cacher/FeedCache;

    .line 62
    iget-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final synthetic access$getFeedCache$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Lru/rocketbank/core/manager/loader/cacher/FeedCache;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->feedCache:Lru/rocketbank/core/manager/loader/cacher/FeedCache;

    return-object p0
.end method

.method public static final synthetic access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/core/manager/loader/FeedLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTopItems$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->topItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$isLastReached$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$merger(Lru/rocketbank/core/manager/loader/FeedLoader;Lru/rocketbank/core/network/model/NanoFeedResult;)Lrx/Observable;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader;->merger(Lru/rocketbank/core/network/model/NanoFeedResult;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastReached$p(Lru/rocketbank/core/manager/loader/FeedLoader;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final merger(Lru/rocketbank/core/network/model/NanoFeedResult;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$merger$1;-><init>(Lru/rocketbank/core/manager/loader/FeedLoader;Lru/rocketbank/core/network/model/NanoFeedResult;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    .line 82
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.create<NanoFe\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final requestItems(I)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lru/rocketbank/core/manager/loader/FeedLoader;->TAG:Ljava/lang/String;

    const-string v1, "Loading page "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    iget-object v2, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/rocketbank/core/model/UserModel;->getOperationsPerPage()I

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v2, Lru/rocketbank/core/manager/FeedManager;->Companion:Lru/rocketbank/core/manager/FeedManager$Companion;

    .line 1151
    invoke-static {}, Lru/rocketbank/core/manager/FeedManager;->access$getDEFAULT_PAGE_LOAD_LIMIT$cp()I

    move-result v2

    .line 69
    :goto_0
    invoke-interface {v1, v0, p1, v2}, Lru/rocketbank/core/network/api/OperationApi;->getFeed(Ljava/lang/String;II)Lrx/Observable;

    move-result-object p1

    const-string v0, "operationApi.getFeed(tok\u2026.DEFAULT_PAGE_LOAD_LIMIT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 72
    :cond_1
    new-instance p1, Lru/rocketbank/core/exceptions/NotLoggedIn;

    invoke-direct {p1}, Lru/rocketbank/core/exceptions/NotLoggedIn;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.error(NotLoggedIn())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final getCachedItems()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;-><init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 175
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create(Observ\u2026Schedulers.computation())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrentPage()I
    .locals 1

    .line 25
    iget v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    return v0
.end method

.method public final getOperationApi()Lru/rocketbank/core/network/api/OperationApi;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    return-object v0
.end method

.method public final getSearchString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLastLoaded()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isLastReached(Lru/rocketbank/core/model/dto/Pagination;)Z
    .locals 3

    const-string v0, "pagination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Pagination;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    .line 87
    iget v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Pagination;->getTotalPages()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    .line 89
    sget-object v0, Lru/rocketbank/core/manager/loader/FeedLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastPageNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Pagination;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Pagination;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Pagination;->getTotalPages()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isSearch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final loadNextPage()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lru/rocketbank/core/model/FeedList;

    invoke-direct {v0}, Lru/rocketbank/core/model/FeedList;-><init>()V

    .line 153
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    .line 154
    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->topItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    .line 156
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.just(feedList)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 159
    :cond_0
    iget v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->lastPageNumber:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final loadPage(I)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lru/rocketbank/core/manager/loader/FeedLoader;->TAG:Ljava/lang/String;

    const-string v1, "load operation:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader;->requestItems(I)Lrx/Observable;

    move-result-object v0

    .line 97
    new-instance v1, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$1;-><init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 98
    new-instance v1, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$2;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$2;-><init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 99
    new-instance v1, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;-><init>(Lru/rocketbank/core/manager/loader/FeedLoader;I)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    .line 137
    new-instance v0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$4;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$4;-><init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const-string v0, "requestItems(pageNumber)\u2026eedList\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onChangedComment(JLjava/lang/String;)V
    .locals 8

    const-string v0, "comment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->topItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 210
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lru/rocketbank/core/network/model/FeedItem;

    .line 184
    invoke-virtual {v5}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v5}, Lru/rocketbank/core/model/AbstractOperation;->getId()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_3
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/FeedItem;

    .line 186
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v2, :cond_4

    .line 187
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v2, p3}, Lru/rocketbank/core/model/dto/operations/Operation;->setComment(Ljava/lang/String;)V

    const-string v2, "feedItem"

    .line 188
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->notifyItemChange(Lru/rocketbank/core/network/model/FeedItem;)V

    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 214
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lru/rocketbank/core/network/model/FeedItem;

    .line 191
    invoke-virtual {v5}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v5}, Lru/rocketbank/core/model/AbstractOperation;->getId()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_8

    move v5, v4

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_3
    if-eqz v5, :cond_6

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 215
    :cond_9
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    .line 193
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_a

    .line 194
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v0, p3}, Lru/rocketbank/core/model/dto/operations/Operation;->setComment(Ljava/lang/String;)V

    const-string v0, "feedItem"

    .line 195
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lru/rocketbank/core/manager/loader/FeedLoader;->notifyItemChange(Lru/rocketbank/core/network/model/FeedItem;)V

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final removeFromCache(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->topItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeFromCacheById(J)V
    .locals 6

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->operationsList:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/network/model/FeedItem;

    .line 53
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v3}, Lru/rocketbank/core/model/AbstractOperation;->getId()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_3
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 207
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    const-string v0, "it"

    .line 54
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lru/rocketbank/core/manager/loader/FeedLoader;->removeFromCache(Lru/rocketbank/core/network/model/FeedItem;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final resetLastLoaded()V
    .locals 2

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setCurrentPage(I)V
    .locals 0

    return-void
.end method

.method public final setLastLoaded(Z)V
    .locals 0

    return-void
.end method
