.class final Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;
.super Ljava/lang/Object;
.source "FeedLoader.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/FeedLoader;->loadPage(I)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/NanoFeedResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedLoader.kt\nru/rocketbank/core/manager/loader/FeedLoader$loadPage$3\n*L\n1#1,203:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $pageNumber:I

.field final synthetic this$0:Lru/rocketbank/core/manager/loader/FeedLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/FeedLoader;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    iput p2, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->$pageNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/network/model/NanoFeedResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->call(Lru/rocketbank/core/network/model/NanoFeedResult;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/network/model/NanoFeedResult;)V
    .locals 5

    .line 100
    invoke-static {}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->$pageNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getTopItems$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getTopItems$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->top:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object v1, v1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    const-string v2, "nanoFeedResult.top.list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/model/FeedItem;

    .line 112
    invoke-virtual {v2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v3}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    .line 116
    invoke-virtual {v2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3}, Lru/rocketbank/core/model/AbstractOperation;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v3}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v4}, Lru/rocketbank/core/model/AbstractOperation;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 123
    iget-object v4, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v4}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_6
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v3}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_1
    iget-object v3, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    const-string v4, "feedItem"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lru/rocketbank/core/manager/loader/FeedLoader;->notifyItemChange(Lru/rocketbank/core/network/model/FeedItem;)V

    goto :goto_0

    .line 133
    :cond_7
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 135
    invoke-static {}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "operationsList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$3;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
