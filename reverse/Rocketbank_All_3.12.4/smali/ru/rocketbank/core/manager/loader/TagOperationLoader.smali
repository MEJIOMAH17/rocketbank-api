.class public final Lru/rocketbank/core/manager/loader/TagOperationLoader;
.super Lru/rocketbank/core/manager/loader/OperationLoader;
.source "TagOperationLoader.kt"


# instance fields
.field private currentPage:I

.field private isLastLoaded:Z

.field private final operationApi:Lru/rocketbank/core/network/api/OperationApi;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/network/api/OperationApi;Ljava/lang/String;)V
    .locals 1

    const-string v0, "operationApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lru/rocketbank/core/manager/loader/OperationLoader;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    iput-object p2, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->tag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/TagOperationLoader;->setCurrentPage(I)V

    return-void
.end method


# virtual methods
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

    .line 60
    new-instance v0, Lru/rocketbank/core/model/FeedList;

    invoke-direct {v0}, Lru/rocketbank/core/model/FeedList;-><init>()V

    .line 61
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    .line 62
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    .line 64
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.just(feedList)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrentPage()I
    .locals 1

    .line 12
    iget v0, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->currentPage:I

    return v0
.end method

.method public final getSearchString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLastLoaded()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->isLastLoaded:Z

    return v0
.end method

.method public final isSearch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final loadNextPage()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/FeedList;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/core/manager/loader/TagOperationLoader;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/rocketbank/core/manager/loader/TagOperationLoader;->loadPage(I)Lrx/Observable;

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

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->tag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lru/rocketbank/core/network/api/OperationApi;->operations(ILjava/lang/String;Ljava/lang/Long;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/loader/TagOperationLoader$loadPage$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/loader/TagOperationLoader$loadPage$1;-><init>(Lru/rocketbank/core/manager/loader/TagOperationLoader;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 47
    new-instance v1, Lru/rocketbank/core/manager/loader/TagOperationLoader$loadPage$2;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/manager/loader/TagOperationLoader$loadPage$2;-><init>(Lru/rocketbank/core/manager/loader/TagOperationLoader;I)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    const-string v0, "operationApi.operations(\u2026r\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final removeFromCache(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setCurrentPage(I)V
    .locals 0

    .line 12
    iput p1, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->currentPage:I

    return-void
.end method

.method public final setLastLoaded(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lru/rocketbank/core/manager/loader/TagOperationLoader;->isLastLoaded:Z

    return-void
.end method
