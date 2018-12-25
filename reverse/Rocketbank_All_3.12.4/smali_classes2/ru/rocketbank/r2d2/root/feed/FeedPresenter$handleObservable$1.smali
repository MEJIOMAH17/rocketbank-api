.class public final Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;
.super Lrx/Subscriber;
.source "FeedPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter;->handleObservable(Lrx/Observable;)V
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

    .line 373
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

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

    .line 380
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeBottom()V

    .line 384
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->isSearch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 385
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->clear()V

    .line 386
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$getOperationLoader$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;)Lru/rocketbank/core/manager/loader/OperationLoader;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/loader/OperationLoader;->getSearchString()Ljava/lang/String;

    move-result-object p1

    .line 387
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/feed/Feed;->showError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 373
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->onNext(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/FeedList;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedAdapter()Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeBottom()V

    .line 396
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Z)V

    .line 398
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$handleObservable$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$onRefreshedData(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method
