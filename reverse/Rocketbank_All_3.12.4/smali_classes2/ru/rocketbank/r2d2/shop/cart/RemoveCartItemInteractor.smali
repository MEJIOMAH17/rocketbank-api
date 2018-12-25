.class public final Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;
.super Lru/rocketbank/core/utils/Interactor;
.source "RemoveCartItemInteractor.kt"


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

.field private final cartItem:Lru/rocketbank/core/model/shop/CartItem;

.field private final cartStorage:Lru/rocketbank/core/model/shop/CartStorage;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/shop/Cart;Lru/rocketbank/core/model/shop/CartItem;Lru/rocketbank/core/model/shop/CartStorage;)V
    .locals 1

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cartItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cartStorage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lru/rocketbank/core/utils/Interactor;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->cart:Lru/rocketbank/core/model/shop/Cart;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->cartItem:Lru/rocketbank/core/model/shop/CartItem;

    iput-object p3, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    return-void
.end method


# virtual methods
.method public final getCart()Lru/rocketbank/core/model/shop/Cart;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->cart:Lru/rocketbank/core/model/shop/Cart;

    return-object v0
.end method

.method public final getCartItem()Lru/rocketbank/core/model/shop/CartItem;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->cartItem:Lru/rocketbank/core/model/shop/CartItem;

    return-object v0
.end method

.method public final getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

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

    .line 15
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor$observable$1;-><init>(Lru/rocketbank/r2d2/shop/cart/RemoveCartItemInteractor;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create {\n    \u2026t.onCompleted()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
