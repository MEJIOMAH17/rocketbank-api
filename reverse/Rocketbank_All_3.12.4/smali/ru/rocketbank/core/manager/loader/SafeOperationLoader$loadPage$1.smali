.class final Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$1;
.super Ljava/lang/Object;
.source "SafeOperationLoader.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/SafeOperationLoader;->loadPage(I)Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/SafeOperationLoader;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lru/rocketbank/core/model/OperationsResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$1;->call(Lru/rocketbank/core/model/OperationsResponse;)Lru/rocketbank/core/model/FeedList;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/OperationsResponse;)Lru/rocketbank/core/model/FeedList;
    .locals 6

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    new-instance v1, Lru/rocketbank/core/model/FeedList;

    invoke-direct {v1}, Lru/rocketbank/core/model/FeedList;-><init>()V

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Lru/rocketbank/core/model/OperationsResponse;->getFeed()Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {p1}, Lru/rocketbank/core/model/OperationsResponse;->getFeed()Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 33
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->size()I

    move-result v4

    .line 35
    invoke-virtual {v2}, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/network/model/FeedItem;

    .line 37
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v4, v3

    .line 41
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/OperationsResponse;->getPagination()Lru/rocketbank/core/model/dto/Pagination;

    move-result-object p1

    iput-object p1, v1, Lru/rocketbank/core/model/FeedList;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    .line 42
    iget-object p1, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/loader/SafeOperationLoader;->isLastLoaded()Z

    move-result p1

    if-nez p1, :cond_4

    .line 43
    iget-object p1, p0, Lru/rocketbank/core/manager/loader/SafeOperationLoader$loadPage$1;->this$0:Lru/rocketbank/core/manager/loader/SafeOperationLoader;

    sget-object v2, Lru/rocketbank/core/manager/FeedManager;->Companion:Lru/rocketbank/core/manager/FeedManager$Companion;

    .line 1151
    invoke-static {}, Lru/rocketbank/core/manager/FeedManager;->access$getDEFAULT_PAGE_LOAD_LIMIT$cp()I

    move-result v2

    if-ge v4, v2, :cond_3

    const/4 v3, 0x1

    .line 43
    :cond_3
    invoke-virtual {p1, v3}, Lru/rocketbank/core/manager/loader/SafeOperationLoader;->setLastLoaded(Z)V

    .line 47
    :cond_4
    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    .line 48
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, v1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    return-object v1
.end method
