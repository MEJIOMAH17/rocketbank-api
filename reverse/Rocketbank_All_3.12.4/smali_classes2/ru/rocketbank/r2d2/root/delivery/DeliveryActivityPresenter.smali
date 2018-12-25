.class public final Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;
.super Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;
.source "DeliveryActivityPresenter.kt"


# instance fields
.field private apiSubscription:Lrx/Subscription;

.field private view:Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;-><init>()V

    .line 16
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->apiSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getDeliveryManager$p(Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;)Lru/rocketbank/core/manager/DeliveryManager;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;)Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;
    .locals 0

    .line 14
    iget-object p0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->view:Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;

    return-object p0
.end method

.method public static final synthetic access$setView$p(Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->view:Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;

    return-void
.end method


# virtual methods
.method public final loadCompletedDeliveryDetails(Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/core/network/api/DeliveryApi;->getDelivery(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 27
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object p1

    .line 28
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 29
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 30
    new-instance v0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter$loadCompletedDeliveryDetails$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter$loadCompletedDeliveryDetails$1;-><init>(Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->apiSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iput-object p2, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->view:Lru/rocketbank/r2d2/root/delivery/DeliveryActivityView;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/delivery/DeliveryActivityPresenter;->apiSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 59
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->onDestroy()V

    return-void
.end method
