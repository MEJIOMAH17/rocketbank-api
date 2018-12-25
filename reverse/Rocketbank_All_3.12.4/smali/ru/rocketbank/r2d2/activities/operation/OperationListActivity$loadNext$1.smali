.class public final Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;
.super Lrx/Subscriber;
.source "OperationListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->loadNext()V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

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

    .line 272
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 273
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;Z)V

    .line 274
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->access$getAdapter$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->removeBottom()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 266
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;->onNext(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/FeedList;)V
    .locals 5

    const-string v0, "feedList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->access$setListLoadingInProgress$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;Z)V

    .line 280
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    const-string v2, "feedList.feed"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 281
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$loadNext$1;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->access$getAdapter$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;

    move-result-object v2

    iget-object v3, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "feedList.feed[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->addItem(Lru/rocketbank/core/network/model/FeedItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
