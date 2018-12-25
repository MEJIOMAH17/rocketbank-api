.class final Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;
.super Ljava/lang/Object;
.source "FeedPresenter.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter;->onRequestAccepted(Lru/rocketbank/core/network/model/FeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 228
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeed()Lru/rocketbank/r2d2/root/feed/Feed;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/r2d2/root/feed/Feed;->showProgressExecution()V

    .line 230
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->$feedItem:Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 233
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    .line 231
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/FeedManager;->sendMoneyToFriend(J)Lrx/Observable;

    move-result-object p1

    .line 232
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 233
    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedPresenter$onRequestAccepted$1;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    invoke-static {p2, p1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$setActionSubscription$p(Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lrx/Subscription;)V

    return-void
.end method
