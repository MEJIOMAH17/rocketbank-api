.class final Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;
.super Ljava/lang/Object;
.source "FeedLoader.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/loader/FeedLoader;->getCachedItems()Lrx/Observable;
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
        "Lrx/Observable$OnSubscribe<",
        "Lru/rocketbank/core/model/FeedList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/FeedLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lru/rocketbank/core/model/FeedList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FeedManager"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "operationsList(cache): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v2}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lru/rocketbank/core/model/FeedList;

    invoke-direct {v0}, Lru/rocketbank/core/model/FeedList;-><init>()V

    .line 169
    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getOperationsList$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    .line 170
    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$cachedItems$1;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getTopItems$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    const/4 v1, 0x0

    .line 171
    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    .line 173
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
