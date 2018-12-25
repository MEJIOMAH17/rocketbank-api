.class public final Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;
.super Lru/rocketbank/r2d2/shop/AbstractShopPresenter;
.source "ShopOrderPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/order/ShopOrderContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/shop/AbstractShopPresenter<",
        "Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;",
        ">;",
        "Lru/rocketbank/r2d2/shop/order/ShopOrderContract$Presenter;"
    }
.end annotation


# instance fields
.field public cart:Lru/rocketbank/core/model/shop/Cart;

.field public data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

.field private final rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

.field private subscription:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;-><init>()V

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method

.method public static final synthetic access$updateConfirmButton(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->updateConfirmButton(Z)V

    return-void
.end method

.method private final updateConfirmButton(Z)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;->setConfirmButtonEnabled(Z)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final confirm()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->cart:Lru/rocketbank/core/model/shop/Cart;

    if-nez v1, :cond_0

    const-string v2, "cart"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;->onConfirmed(Lru/rocketbank/core/model/shop/Cart;)V

    return-void

    :cond_1
    return-void
.end method

.method public final getCart()Lru/rocketbank/core/model/shop/Cart;
    .locals 2

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->cart:Lru/rocketbank/core/model/shop/Cart;

    if-nez v0, :cond_0

    const-string v1, "cart"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getData()Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;
    .locals 2

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    if-nez v0, :cond_0

    const-string v1, "data"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-object v0
.end method

.method public final getSubscription()Lrx/Subscription;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public final haveQuestion()V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;->showShopInfo()V

    return-void

    :cond_0
    return-void
.end method

.method public final init(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 4

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->cart:Lru/rocketbank/core/model/shop/Cart;

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    if-nez v0, :cond_0

    const-string v1, "data"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getValidObservable()Lrx/Observable;

    move-result-object v0

    .line 25
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 26
    new-instance v1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$1;-><init>(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$2;->INSTANCE:Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$init$validSubscription$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    new-instance v3, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_1
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    const-string v1, "validSubscription"

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->addSubscription(Lrx/Subscription;)V

    .line 28
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Cart;->getAmount()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;->showAmount(D)V

    return-void

    :cond_2
    return-void
.end method

.method public final onAddressTyped(Ljava/lang/String;)V
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->subscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->unsubscribe(Lrx/Subscription;)V

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0, p1}, Lru/rocketbank/core/network/api/RocketAPI;->addresses(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 50
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 51
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 52
    new-instance v0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$1;-><init>(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;)V

    check-cast v0, Lrx/functions/Action1;

    new-instance v1, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter$onAddressTyped$s$2;-><init>(Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    const-string v0, "s"

    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->addSubscription(Lrx/Subscription;)V

    .line 54
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->subscription:Lrx/Subscription;

    return-void
.end method

.method public final onResult(Z)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderContract$View;->back()V

    return-void

    :cond_0
    return-void
.end method

.method public final setCart(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->cart:Lru/rocketbank/core/model/shop/Cart;

    return-void
.end method

.method public final setData(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->data:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    return-void
.end method

.method public final setSubscription(Lrx/Subscription;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/order/ShopOrderPresenter;->subscription:Lrx/Subscription;

    return-void
.end method
