.class public final Lru/rocketbank/core/manager/FeedManager;
.super Ljava/lang/Object;
.source "FeedManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;,
        Lru/rocketbank/core/manager/FeedManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/FeedManager$Companion;

.field private static final DEFAULT_PAGE_LOAD_LIMIT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FeedManager"


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final feedLoader:Lru/rocketbank/core/manager/loader/FeedLoader;

.field private final operationApi:Lru/rocketbank/core/network/api/OperationApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/FeedManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/FeedManager$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/FeedManager;->Companion:Lru/rocketbank/core/manager/FeedManager$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/network/api/OperationApi;Lru/rocketbank/core/manager/loader/FeedLoader;)V
    .locals 1

    const-string v0, "authorization"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/FeedManager;->authorization:Lru/rocketbank/core/user/Authorization;

    iput-object p2, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    iput-object p3, p0, Lru/rocketbank/core/manager/FeedManager;->feedLoader:Lru/rocketbank/core/manager/loader/FeedLoader;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_PAGE_LOAD_LIMIT$cp()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lru/rocketbank/core/manager/FeedManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cancelMoneyToFriend(J)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseContainerData;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lru/rocketbank/core/model/TokenRequestData;

    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/TokenRequestData;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-interface {v1, p1, p2, v0}, Lru/rocketbank/core/network/api/OperationApi;->cancelFriendMoney(JLru/rocketbank/core/model/TokenRequestData;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/FeedManager$cancelMoneyToFriend$1;

    invoke-direct {v1, p0, p1, p2}, Lru/rocketbank/core/manager/FeedManager$cancelMoneyToFriend$1;-><init>(Lru/rocketbank/core/manager/FeedManager;J)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    const-string p2, "operationApi.cancelFrien\u2026removeFromCacheById(id) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final declineMoneyToFriend(J)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseContainerData;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lru/rocketbank/core/model/TokenRequestData;

    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/TokenRequestData;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-interface {v1, p1, p2, v0}, Lru/rocketbank/core/network/api/OperationApi;->declineFriendMoney(JLru/rocketbank/core/model/TokenRequestData;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/FeedManager$declineMoneyToFriend$1;

    invoke-direct {v1, p0, p1, p2}, Lru/rocketbank/core/manager/FeedManager$declineMoneyToFriend$1;-><init>(Lru/rocketbank/core/manager/FeedManager;J)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    const-string p2, "operationApi.declineFrie\u2026removeFromCacheById(id) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager;->feedLoader:Lru/rocketbank/core/manager/loader/FeedLoader;

    return-object v0
.end method

.method public final getOperationLoader()Lru/rocketbank/core/manager/loader/OperationSimpleLoader;
    .locals 2

    .line 118
    new-instance v0, Lru/rocketbank/core/manager/loader/OperationSimpleLoader;

    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/loader/OperationSimpleLoader;-><init>(Lru/rocketbank/core/network/api/OperationApi;)V

    return-object v0
.end method

.method public final getSafeOperationLoader(Ljava/lang/String;)Lru/rocketbank/core/manager/loader/OperationLoader;
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lru/rocketbank/core/manager/loader/SafeOperationLoader;

    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-direct {v0, v1, p1}, Lru/rocketbank/core/manager/loader/SafeOperationLoader;-><init>(Lru/rocketbank/core/network/api/OperationApi;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/manager/loader/OperationLoader;

    return-object v0
.end method

.method public final getSearchLoader(Ljava/lang/String;)Lru/rocketbank/core/manager/loader/OperationLoader;
    .locals 4

    const-string v0, "searchString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    const-string v2, "token: "

    .line 100
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v1, Lru/rocketbank/core/manager/loader/SearchLoader;

    iget-object v2, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-direct {v1, v2, p1, v0}, Lru/rocketbank/core/manager/loader/SearchLoader;-><init>(Lru/rocketbank/core/network/api/OperationApi;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lru/rocketbank/core/manager/loader/OperationLoader;

    return-object v1
.end method

.method public final getTagOperationLoader(Ljava/lang/String;)Lru/rocketbank/core/manager/loader/TagOperationLoader;
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lru/rocketbank/core/manager/loader/TagOperationLoader;

    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-direct {v0, v1, p1}, Lru/rocketbank/core/manager/loader/TagOperationLoader;-><init>(Lru/rocketbank/core/network/api/OperationApi;Ljava/lang/String;)V

    return-object v0
.end method

.method public final refresh()V
    .locals 2

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager;->feedLoader:Lru/rocketbank/core/manager/loader/FeedLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->loadPage(I)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/FeedManager$refresh$1;

    invoke-direct {v1}, Lru/rocketbank/core/manager/FeedManager$refresh$1;-><init>()V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final refreshTail()V
    .locals 4

    .line 74
    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager;->feedLoader:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->resetLastLoaded()V

    .line 75
    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager;->feedLoader:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    if-gt v1, v0, :cond_0

    .line 77
    :goto_0
    iget-object v2, p0, Lru/rocketbank/core/manager/FeedManager;->feedLoader:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->loadPage(I)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lru/rocketbank/core/manager/FeedManager$refreshTail$1;

    invoke-direct {v3, v1}, Lru/rocketbank/core/manager/FeedManager$refreshTail$1;-><init>(I)V

    check-cast v3, Lrx/Subscriber;

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendMoneyToFriend(J)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseContainerData;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lru/rocketbank/core/model/TokenRequestData;

    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/TokenRequestData;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-interface {v1, p1, p2, v0}, Lru/rocketbank/core/network/api/OperationApi;->sendFriendMoney(JLru/rocketbank/core/model/TokenRequestData;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/manager/FeedManager$sendMoneyToFriend$1;

    invoke-direct {v1, p0, p1, p2}, Lru/rocketbank/core/manager/FeedManager$sendMoneyToFriend$1;-><init>(Lru/rocketbank/core/manager/FeedManager;J)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    const-string p2, "operationApi.sendFriendM\u2026removeFromCacheById(id) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendMonthCashBack(Ljava/util/List;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/Empty;",
            ">;"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lru/rocketbank/core/model/dto/MonthCashBackModel;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/MonthCashBackModel;-><init>()V

    .line 122
    iput-object p1, v0, Lru/rocketbank/core/model/dto/MonthCashBackModel;->merchants:Ljava/util/List;

    .line 123
    iget-object p1, p0, Lru/rocketbank/core/manager/FeedManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lru/rocketbank/core/model/dto/MonthCashBackModel;->token:Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/OperationApi;->sendMonthCashBack(Lru/rocketbank/core/model/dto/MonthCashBackModel;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string v0, "operationApi.sendMonthCa\u2026bserveOn(Schedulers.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final stashOperation(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 4

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/model/AbstractOperation;->getId()J

    move-result-wide v1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lru/rocketbank/core/network/api/OperationApi;->stash(JLjava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 129
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 130
    new-instance v1, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;-><init>(Lru/rocketbank/core/manager/FeedManager;Lru/rocketbank/core/network/model/FeedItem;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method
