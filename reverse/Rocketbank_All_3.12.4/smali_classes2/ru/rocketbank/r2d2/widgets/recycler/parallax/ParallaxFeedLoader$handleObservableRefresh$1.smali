.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;
.super Lrx/Subscriber;
.source "ParallaxFeedLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->handleObservableRefresh(Lrx/Observable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/FeedList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;

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

    const-string v0, "FeedLoading"

    const-string v1, "Loading failed"

    .line 149
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->getLoaderListener()Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;->onRefreshDone()V

    .line 151
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;Z)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;->onNext(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/FeedList;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    const-string v2, "result.feed"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 158
    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->getParallaxAdapter()Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    move-result-object v3

    iget-object v4, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "result.feed[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addDynamicFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->getLoaderListener()Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$ParallaxFeedLoaderListener;->onRefreshDone()V

    .line 163
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;->access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxFeedLoader;Z)V

    return-void
.end method
