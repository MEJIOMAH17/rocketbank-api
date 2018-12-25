.class final Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$4;
.super Ljava/lang/Object;
.source "FeedLoader.kt"

# interfaces
.implements Lrx/functions/Func1;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/FeedLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$4;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/network/model/NanoFeedResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$4;->call(Lru/rocketbank/core/network/model/NanoFeedResult;)Lru/rocketbank/core/model/FeedList;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/network/model/NanoFeedResult;)Lru/rocketbank/core/model/FeedList;
    .locals 2

    .line 138
    new-instance v0, Lru/rocketbank/core/model/FeedList;

    invoke-direct {v0}, Lru/rocketbank/core/model/FeedList;-><init>()V

    if-eqz p1, :cond_0

    .line 141
    iget-object v1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->feed:Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    iget-object v1, v1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;->list:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    .line 142
    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$4;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v1}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$getTopItems$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    .line 143
    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    iput-object p1, v0, Lru/rocketbank/core/model/FeedList;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    :cond_0
    return-object v0
.end method
