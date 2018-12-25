.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$1;
.super Lrx/Subscriber;
.source "SafeAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$1;->onNext(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->addItem(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method
