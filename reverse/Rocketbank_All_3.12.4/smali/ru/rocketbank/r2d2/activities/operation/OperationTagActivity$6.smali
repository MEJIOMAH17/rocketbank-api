.class Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;
.super Lrx/Subscriber;
.source "OperationTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->loadNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 532
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 533
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$102(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Z)Z

    .line 534
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$200(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->removeBottom()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 524
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;->onNext(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/FeedList;)V
    .locals 3

    .line 539
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$102(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;Z)Z

    .line 541
    :goto_0
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 542
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$6;->this$0:Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;->access$200(Lru/rocketbank/r2d2/activities/operation/OperationTagActivity;)Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;

    move-result-object v0

    iget-object v2, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/activities/operation/OperationTagActivity$FeedAdapter;->addItem(Lru/rocketbank/core/network/model/FeedItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
