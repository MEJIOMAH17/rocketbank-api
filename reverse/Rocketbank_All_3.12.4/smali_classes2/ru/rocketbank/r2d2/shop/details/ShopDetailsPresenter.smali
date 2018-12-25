.class public final Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;
.super Lru/rocketbank/r2d2/shop/AbstractShopPresenter;
.source "ShopDetailsPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/shop/AbstractShopPresenter<",
        "Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;",
        ">;",
        "Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$Presenter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopDetailsPresenter.kt\nru/rocketbank/r2d2/shop/details/ShopDetailsPresenter\n*L\n1#1,66:1\n*E\n"
.end annotation


# instance fields
.field private color:Lru/rocketbank/core/model/shop/Color;

.field public shopItem:Lru/rocketbank/core/model/shop/ShopItem;

.field private size:Lru/rocketbank/core/model/shop/Size;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;-><init>()V

    return-void
.end method

.method private final canAdd()Z
    .locals 6

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    if-nez v0, :cond_0

    const-string v1, "shopItem"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/shop/ShopItem;->getSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 46
    :goto_1
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    if-nez v3, :cond_3

    const-string v4, "shopItem"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/ShopItem;->getColors()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-le v3, v2, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    .line 47
    :goto_3
    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    if-nez v4, :cond_6

    const-string v5, "shopItem"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice_replacement()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v4, v2

    :goto_5
    if-nez v3, :cond_9

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    return v2

    :cond_9
    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->size:Lru/rocketbank/core/model/shop/Size;

    if-eqz v0, :cond_c

    :cond_a
    if-eqz v3, :cond_b

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->color:Lru/rocketbank/core/model/shop/Color;

    if-eqz v0, :cond_c

    :cond_b
    if-eqz v4, :cond_c

    return v2

    :cond_c
    return v1
.end method

.method private final updateButton()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->canAdd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;->showAddToCartButton()V

    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;->hideAddToCartButton()V

    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public final addToCart(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 7

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;

    sget-object v1, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;->getCart()Lru/rocketbank/core/model/shop/Cart;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lru/rocketbank/core/model/shop/Cart;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lru/rocketbank/core/model/shop/Cart;-><init>(Ljava/util/List;)V

    :cond_0
    move-object v2, v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;

    move-result-object v3

    iget-object v5, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->size:Lru/rocketbank/core/model/shop/Size;

    iget-object v6, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->color:Lru/rocketbank/core/model/shop/Color;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;-><init>(Lru/rocketbank/core/model/shop/Cart;Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/model/shop/ShopItem;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)V

    .line 58
    new-instance p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter$addToCart$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter$addToCart$1;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;)V

    move-object v2, p1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lru/rocketbank/core/utils/Interactor;->execute$default(Lru/rocketbank/core/utils/Interactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final getShopItem()Lru/rocketbank/core/model/shop/ShopItem;
    .locals 2

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    if-nez v0, :cond_0

    const-string v1, "shopItem"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onAttached(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/shop/AbstractShopPresenter;->onAttached(Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->updateButton()V

    return-void
.end method

.method public final onCartButtonClick()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->getView()Lru/rocketbank/r2d2/shop/ShopViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;->showCart()V

    return-void

    :cond_0
    return-void
.end method

.method public final selectColor(Lru/rocketbank/core/model/shop/Color;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->color:Lru/rocketbank/core/model/shop/Color;

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->updateButton()V

    return-void
.end method

.method public final selectSize(Lru/rocketbank/core/model/shop/Size;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->size:Lru/rocketbank/core/model/shop/Size;

    .line 23
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->updateButton()V

    return-void
.end method

.method public final setShopItem(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    return-void
.end method
