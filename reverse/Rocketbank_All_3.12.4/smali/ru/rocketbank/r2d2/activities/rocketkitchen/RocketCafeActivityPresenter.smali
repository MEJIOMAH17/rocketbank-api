.class public final Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "RocketCafeActivityPresenter.kt"


# instance fields
.field private apiSubscription:Lrx/Subscription;

.field private final cafeApi:Lru/rocketbank/core/network/api/CafeApi;

.field private view:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketCafeApi()Lru/rocketbank/core/network/api/CafeApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->cafeApi:Lru/rocketbank/core/network/api/CafeApi;

    return-void
.end method

.method public static final synthetic access$getView$p(Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;)Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;
    .locals 0

    .line 17
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->view:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    return-object p0
.end method

.method public static final synthetic access$setView$p(Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->view:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    return-void
.end method


# virtual methods
.method public final fillSafe(J)V
    .locals 1

    .line 30
    new-instance v0, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/cafe/CafeRefillBody;-><init>(J)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->cafeApi:Lru/rocketbank/core/network/api/CafeApi;

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/CafeApi;->refillMoney(Lru/rocketbank/core/network/model/cafe/CafeRefillBody;)Lrx/Observable;

    move-result-object p1

    .line 32
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 33
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 34
    new-instance p2, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;-><init>(Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->apiSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/Presenter;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p2, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->view:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->view:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->apiSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 55
    :cond_0
    invoke-super {p0}, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroy()V

    return-void
.end method
