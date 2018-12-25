.class public final Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;
.super Lrx/Subscriber;
.source "FeedPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/ResponseContainerData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

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

    .line 239
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->hideProgress()V

    .line 240
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshTop()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 233
    check-cast p1, Lru/rocketbank/core/model/ResponseContainerData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->onNext(Lru/rocketbank/core/model/ResponseContainerData;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/ResponseContainerData;)V
    .locals 1

    const-string v0, "responseContainerData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->hideProgress()V

    .line 245
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->refreshTop()V

    .line 247
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->removeOperation(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method
