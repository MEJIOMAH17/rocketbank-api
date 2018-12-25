.class public final Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;
.super Lru/rocketbank/r2d2/shop/AbstractShopPresenter;
.source "ShopFeedPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/shop/AbstractShopPresenter<",
        "Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;",
        ">;",
        "Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;-><init>()V

    return-void
.end method

.method public static final synthetic access$onCartLoaded(Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;Lru/rocketbank/core/model/shop/Cart;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->onCartLoaded(Lru/rocketbank/core/model/shop/Cart;)V

    return-void
.end method

.method public static final synthetic access$onItemsLoaded(Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;Ljava/util/List;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->onItemsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onLoadingError(Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->onLoadingError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final onCartLoaded(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Cart;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->hideCartButton()V

    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Cart;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->showCartButton(I)V

    return-void

    :cond_2
    return-void
.end method

.method private final onItemsLoaded(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->onItemsEmpty()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->onItemsLoaded(Ljava/util/List;)V

    .line 31
    :cond_1
    :goto_0
    new-instance v1, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getShopApi()Lru/rocketbank/core/network/api/ShopApi;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;-><init>(Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/network/api/ShopApi;)V

    .line 32
    move-object p1, v1

    check-cast p1, Lru/rocketbank/core/utils/Interactor;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->addInteractor(Lru/rocketbank/core/utils/Interactor;)Z

    .line 34
    new-instance p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$onItemsLoaded$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$onItemsLoaded$1;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;)V

    move-object v2, p1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 35
    new-instance p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$onItemsLoaded$2;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$onItemsLoaded$2;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 33
    invoke-static/range {v1 .. v6}, Lru/rocketbank/core/utils/Interactor;->execute$default(Lru/rocketbank/core/utils/Interactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final onLoadingError(Ljava/lang/Throwable;)V
    .locals 0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->onItemsLoadingError()V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final loadItems()V
    .locals 7

    .line 15
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->onLoadingInProgress()V

    .line 16
    :cond_0
    new-instance v1, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getShopApi()Lru/rocketbank/core/network/api/ShopApi;

    move-result-object v0

    invoke-direct {v1, v0}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;-><init>(Lru/rocketbank/core/network/api/ShopApi;)V

    .line 17
    move-object v0, v1

    check-cast v0, Lru/rocketbank/core/utils/Interactor;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->addInteractor(Lru/rocketbank/core/utils/Interactor;)Z

    .line 19
    new-instance v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$loadItems$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$loadItems$1;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 20
    new-instance v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$loadItems$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter$loadItems$2;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lru/rocketbank/core/utils/Interactor;->execute$default(Lru/rocketbank/core/utils/Interactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCartButtonClick()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->showCart()V

    return-void

    :cond_0
    return-void
.end method

.method public final onItemClick(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 1

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedContract$View;->showItemInfo(Lru/rocketbank/core/model/shop/ShopItem;)V

    return-void

    :cond_0
    return-void
.end method
