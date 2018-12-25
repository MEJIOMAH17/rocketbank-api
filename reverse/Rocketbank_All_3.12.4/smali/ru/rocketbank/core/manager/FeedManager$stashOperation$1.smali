.class public final Lru/rocketbank/core/manager/FeedManager$stashOperation$1;
.super Lrx/Subscriber;
.source "FeedManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/FeedManager;->stashOperation(Lru/rocketbank/core/network/model/FeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field final synthetic this$0:Lru/rocketbank/core/manager/FeedManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/FeedManager;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ")V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;->this$0:Lru/rocketbank/core/manager/FeedManager;

    iput-object p2, p0, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lru/rocketbank/core/manager/FeedManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stash item failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    iget-object p1, p0, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;->this$0:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->notifyItemChange(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .line 130
    check-cast p1, Lru/rocketbank/core/model/ResponseModel;

    const-string v0, "responseModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1141
    iget-object p1, p0, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;->this$0:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/FeedManager;->getFeedLoader()Lru/rocketbank/core/manager/loader/FeedLoader;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/manager/FeedManager$stashOperation$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/manager/loader/FeedLoader;->removeFromCache(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method
