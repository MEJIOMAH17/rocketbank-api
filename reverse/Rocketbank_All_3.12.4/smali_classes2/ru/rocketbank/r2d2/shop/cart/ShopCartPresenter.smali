.class public final Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;
.super Lru/rocketbank/r2d2/shop/AbstractShopPresenter;
.source "ShopCartPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/shop/AbstractShopPresenter<",
        "Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;",
        ">;",
        "Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;"
    }
.end annotation


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private miles:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;-><init>()V

    .line 16
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$cartIsEmpty(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->cartIsEmpty()V

    return-void
.end method

.method public static final synthetic access$getMiles$p(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)D
    .locals 2

    .line 14
    iget-wide v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->miles:D

    return-wide v0
.end method

.method public static final synthetic access$onCartLoaded(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;Lru/rocketbank/core/model/shop/Cart;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->onCartLoaded(Lru/rocketbank/core/model/shop/Cart;)V

    return-void
.end method

.method public static final synthetic access$onLoadingError(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->onLoadingError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setMiles$p(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;D)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->miles:D

    return-void
.end method

.method public static final synthetic access$updateDeficit(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;D)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->updateDeficit(D)V

    return-void
.end method

.method private final cartIsEmpty()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->onItemsEmpty()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->enableCheckoutButton(Z)V

    return-void

    :cond_1
    return-void
.end method

.method private final onCartLoaded(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$onCartLoaded$1;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;Lru/rocketbank/core/model/shop/Cart;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private final onLoadingError(Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->onItemsLoadingError()V

    return-void

    :cond_0
    return-void
.end method

.method private final updateDeficit(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v1, :cond_1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->enableCheckoutButton(Z)V

    :cond_1
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->updateDeficit(D)V

    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->hideDeficit()V

    return-void

    :cond_4
    return-void
.end method


# virtual methods
.method public final checkout()V
    .locals 5

    .line 81
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-wide v1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->miles:D

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/model/shop/Cart;->getDeficit(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-nez v4, :cond_2

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_2

    sget-object v1, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->showCheckoutActivity(Lru/rocketbank/core/model/shop/Cart;)V

    return-void

    :cond_2
    return-void
.end method

.method public final load(Z)V
    .locals 6

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->onLoadingInProgress()V

    .line 20
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getShopApi()Lru/rocketbank/core/network/api/ShopApi;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;-><init>(Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/network/api/ShopApi;)V

    .line 21
    move-object p1, v0

    check-cast p1, Lru/rocketbank/core/utils/Interactor;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->addInteractor(Lru/rocketbank/core/utils/Interactor;)Z

    .line 23
    new-instance p1, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$1;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)V

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 24
    new-instance p1, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$2;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$2;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)V

    move-object v2, p1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 22
    invoke-static/range {v0 .. v5}, Lru/rocketbank/core/utils/Interactor;->execute$default(Lru/rocketbank/core/utils/Interactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final onInfoClick()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->showRocketrublesInfo()V

    return-void

    :cond_0
    return-void
.end method

.method public final onItemClick(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 1

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartItem;->getShopItem()Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$View;->showItemInfo(Lru/rocketbank/core/model/shop/ShopItem;)V

    return-void

    :cond_0
    return-void
.end method

.method public final remove(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 7

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;

    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lru/rocketbank/core/model/shop/Cart;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lru/rocketbank/core/model/shop/Cart;-><init>(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;-><init>(Lru/rocketbank/core/model/shop/Cart;Lru/rocketbank/core/model/shop/CartItem;Lru/rocketbank/core/model/shop/CartStorage;)V

    .line 62
    move-object v0, v1

    check-cast v0, Lru/rocketbank/core/utils/Interactor;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->addInteractor(Lru/rocketbank/core/utils/Interactor;)Z

    .line 63
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$remove$1;-><init>(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;Lru/rocketbank/core/model/shop/CartItem;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lru/rocketbank/core/utils/Interactor;->execute$default(Lru/rocketbank/core/utils/Interactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
