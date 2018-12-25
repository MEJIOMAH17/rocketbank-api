.class final Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$2;
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


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/loader/FeedLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/loader/FeedLoader;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$2;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/network/model/NanoFeedResult;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$2;->call(Lru/rocketbank/core/network/model/NanoFeedResult;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/network/model/NanoFeedResult;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$2;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    invoke-static {v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->access$isLastReached$p(Lru/rocketbank/core/manager/loader/FeedLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/loader/FeedLoader$loadPage$2;->this$0:Lru/rocketbank/core/manager/loader/FeedLoader;

    iget-object p1, p1, Lru/rocketbank/core/network/model/NanoFeedResult;->pagination:Lru/rocketbank/core/model/dto/Pagination;

    const-string v2, "result.pagination"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lru/rocketbank/core/manager/loader/FeedLoader;->isLastReached(Lru/rocketbank/core/model/dto/Pagination;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
