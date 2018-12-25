.class final Lru/rocketbank/core/manager/loader/OperationSimpleLoader$loadPage$1;
.super Ljava/lang/Object;
.source "OperationSimpleLoader.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/OperationSimpleLoader;->loadPage(I)Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/OperationSimpleLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/OperationSimpleLoader;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/OperationSimpleLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/OperationSimpleLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/OperationSimpleLoader$loadPage$1;->call(Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;)Lru/rocketbank/core/model/FeedList;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;)Lru/rocketbank/core/model/FeedList;
    .locals 6

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 21
    new-instance v1, Lru/rocketbank/core/model/FeedList;

    invoke-direct {v1}, Lru/rocketbank/core/model/FeedList;-><init>()V

    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;->getOperations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;->getOperations()Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 31
    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->isRocketRubleOperation()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    .line 32
    :goto_1
    new-instance v5, Lru/rocketbank/core/network/model/FeedItem;

    check-cast v3, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v5, v4, v3}, Lru/rocketbank/core/network/model/FeedItem;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    .line 33
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;->getPagination()Lru/rocketbank/core/model/dto/Pagination;

    move-result-object v2

    iput-object v2, v1, Lru/rocketbank/core/model/FeedList;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    .line 38
    iget-object v2, p0, Lru/rocketbank/core/manager/loader/OperationSimpleLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/OperationSimpleLoader;

    invoke-virtual {v2}, Lru/rocketbank/core/manager/loader/OperationSimpleLoader;->isLastLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 39
    iget-object v2, p0, Lru/rocketbank/core/manager/loader/OperationSimpleLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/OperationSimpleLoader;

    iget-object v3, p0, Lru/rocketbank/core/manager/loader/OperationSimpleLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/OperationSimpleLoader;

    invoke-virtual {v3}, Lru/rocketbank/core/manager/loader/OperationSimpleLoader;->getCurrentPage()I

    move-result v3

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;->getPagination()Lru/rocketbank/core/model/dto/Pagination;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/Pagination;->getTotalPages()I

    move-result p1

    if-ne v3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v2, p1}, Lru/rocketbank/core/manager/loader/OperationSimpleLoader;->setLastLoaded(Z)V

    .line 43
    :cond_3
    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, v1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    return-object v1
.end method
