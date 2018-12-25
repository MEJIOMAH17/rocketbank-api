.class public final Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;
.super Lru/rocketbank/core/utils/Interactor;
.source "AddToCartInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/Interactor<",
        "Lru/rocketbank/core/model/shop/Cart;",
        ">;"
    }
.end annotation


# instance fields
.field private final cart:Lru/rocketbank/core/model/shop/Cart;

.field private final cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

.field private final color:Lru/rocketbank/core/model/shop/Color;

.field private final shopItem:Lru/rocketbank/core/model/shop/ShopItem;

.field private final size:Lru/rocketbank/core/model/shop/Size;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/shop/Cart;Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/model/shop/ShopItem;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)V
    .locals 1

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cartStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shopItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lru/rocketbank/core/utils/Interactor;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->cart:Lru/rocketbank/core/model/shop/Cart;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    iput-object p3, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    iput-object p4, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->size:Lru/rocketbank/core/model/shop/Size;

    iput-object p5, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->color:Lru/rocketbank/core/model/shop/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/core/model/shop/Cart;Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/model/shop/ShopItem;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;ILkotlin/jvm/internal/Ref;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;-><init>(Lru/rocketbank/core/model/shop/Cart;Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/model/shop/ShopItem;Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)V

    return-void
.end method


# virtual methods
.method public final getCart()Lru/rocketbank/core/model/shop/Cart;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->cart:Lru/rocketbank/core/model/shop/Cart;

    return-object v0
.end method

.method public final getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    return-object v0
.end method

.method public final getColor()Lru/rocketbank/core/model/shop/Color;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->color:Lru/rocketbank/core/model/shop/Color;

    return-object v0
.end method

.method public final getObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/shop/Cart;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor$observable$1;-><init>(Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create {\n    \u2026t.onCompleted()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getShopItem()Lru/rocketbank/core/model/shop/ShopItem;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->shopItem:Lru/rocketbank/core/model/shop/ShopItem;

    return-object v0
.end method

.method public final getSize()Lru/rocketbank/core/model/shop/Size;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/AddToCartInteractor;->size:Lru/rocketbank/core/model/shop/Size;

    return-object v0
.end method
