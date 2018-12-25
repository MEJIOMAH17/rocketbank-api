.class public final Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;
.super Lrx/Subscriber;
.source "FeedPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter;->sendMonthCashBack(Ljava/util/Set;Lru/rocketbank/core/network/model/FeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/Empty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ")V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

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

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$getTAG$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to choose month item"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->hideProgress()V

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshTop()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Lru/rocketbank/core/model/Empty;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->onNext(Lru/rocketbank/core/model/Empty;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/Empty;)V
    .locals 1

    const-string v0, "empty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->hideProgress()V

    .line 158
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->removeOperation(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 159
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$sendMonthCashBack$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshTop()V

    return-void
.end method
