.class final Lru/rocketbank/core/manager/loader/SearchLoader$loadPage$1;
.super Ljava/lang/Object;
.source "SearchLoader.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/SearchLoader;->loadPage(I)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/SearchLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/SearchLoader;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/SearchLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/SearchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lru/rocketbank/core/model/response/OperationsSearchResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/SearchLoader$loadPage$1;->call(Lru/rocketbank/core/model/response/OperationsSearchResponse;)Lru/rocketbank/core/model/FeedList;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/response/OperationsSearchResponse;)Lru/rocketbank/core/model/FeedList;
    .locals 8

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    new-instance v1, Lru/rocketbank/core/model/FeedList;

    invoke-direct {v1}, Lru/rocketbank/core/model/FeedList;-><init>()V

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/OperationsSearchResponse;->getOperations()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/OperationsSearchResponse;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 33
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/OperationsSearchResponse;->getOperations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 34
    invoke-virtual {v5}, Lru/rocketbank/core/model/dto/operations/Operation;->isRocketRubleOperation()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    goto :goto_1

    :cond_0
    const/4 v6, 0x4

    .line 35
    :goto_1
    new-instance v7, Lru/rocketbank/core/network/model/FeedItem;

    check-cast v5, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v7, v6, v5}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    .line 36
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 40
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/response/OperationsSearchResponse;->getPagination()Lru/rocketbank/core/model/dto/Pagination;

    move-result-object p1

    iput-object p1, v1, Lru/rocketbank/core/model/FeedList;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    .line 41
    iget-object p1, p0, Lru/rocketbank/core/manager/loader/SearchLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/SearchLoader;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/loader/SearchLoader;->isLastLoaded()Z

    move-result p1

    if-nez p1, :cond_4

    .line 42
    iget-object p1, p0, Lru/rocketbank/core/manager/loader/SearchLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/SearchLoader;

    sget-object v4, Lru/rocketbank/core/manager/FeedManager;->Companion:Lru/rocketbank/core/manager/FeedManager$Companion;

    .line 1151
    invoke-static {}, Lru/rocketbank/core/manager/FeedManager;->access$getDEFAULT_PAGE_LOAD_LIMIT$cp()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v3, 0x1

    .line 42
    :cond_3
    invoke-virtual {p1, v3}, Lru/rocketbank/core/manager/loader/SearchLoader;->setLastLoaded(Z)V

    .line 46
    :cond_4
    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, v1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    return-object v1
.end method
