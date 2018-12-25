.class public final Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;
.super Lrx/Subscriber;
.source "FeedPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter;->handleObservableRefresh(Lrx/Observable;)V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->disableRefresh()V

    .line 336
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isSearch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->clear()V

    .line 339
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$getOperationLoader$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Lru/rocketbank/core/manager/loader/OperationLoader;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/loader/OperationLoader;->getSearchString()Ljava/lang/String;

    move-result-object p1

    .line 340
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/feed/Feed;->showError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 328
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->onNext(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/FeedList;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$getTAG$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refresh is done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservableRefresh$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$onRefreshedData(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method
