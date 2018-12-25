.class public final Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;
.super Lrx/Subscriber;
.source "FeedPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter;->setLoader(Lru/rocketbank/core/manager/loader/OperationLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

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

    .line 269
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$getTAG$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Change failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;->onNext(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 275
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AbstractOperation;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->changeItem(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void

    .line 278
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$setLoader$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeItem(Lru/rocketbank/core/network/model/FeedItem;)V

    :cond_4
    return-void
.end method
