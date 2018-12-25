.class final Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;
.super Ljava/lang/Object;
.source "FeedPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter;->fillFromCache()V
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
        "Lru/rocketbank/core/model/FeedList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;->call(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/FeedList;)V
    .locals 3

    .line 425
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$getTAG$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fillFromCache got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->clear()V

    .line 428
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$fillFromCache$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, p1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    const-string v2, "feedList.top"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    const-string v2, "feedList.feed"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->addItems(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method
