.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$5;
.super Lrx/Subscriber;
.source "SafeAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->handleObservableRefresh(Lrx/Observable;)Z
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
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "FeedLoading"

    const-string v1, "Loading failed"

    .line 346
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 338
    check-cast p1, Lru/rocketbank/core/model/FeedList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$5;->onNext(Lru/rocketbank/core/model/FeedList;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/FeedList;)V
    .locals 4

    .line 351
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 352
    :goto_0
    iget-object v2, p1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 353
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    move-result-object v2

    iget-object v3, p1, Lru/rocketbank/core/model/FeedList;->top:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->addTopItem(Lru/rocketbank/core/network/model/FeedItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 358
    :goto_1
    iget-object v0, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 359
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    move-result-object v0

    iget-object v2, p1, Lru/rocketbank/core/model/FeedList;->feed:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->addItem(Lru/rocketbank/core/network/model/FeedItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
