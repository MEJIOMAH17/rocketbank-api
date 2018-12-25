.class public final Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;
.super Lru/rocketbank/core/utils/Interactor;
.source "LoadCartInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/Interactor<",
        "Lru/rocketbank/core/model/shop/Cart;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

.field private static cart:Lru/rocketbank/core/model/shop/Cart;


# instance fields
.field private final cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

.field private loadShopItemsInteractor:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

.field private final shopApi:Lru/rocketbank/core/network/api/ShopApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->Companion:Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/network/api/ShopApi;)V
    .locals 1

    const-string v0, "cartStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shopApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lru/rocketbank/core/utils/Interactor;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    return-void
.end method

.method public static final synthetic access$getCart$cp()Lru/rocketbank/core/model/shop/Cart;
    .locals 1

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->cart:Lru/rocketbank/core/model/shop/Cart;

    return-object v0
.end method

.method public static final synthetic access$setCart$cp(Lru/rocketbank/core/model/shop/Cart;)V
    .locals 0

    .line 17
    sput-object p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->cart:Lru/rocketbank/core/model/shop/Cart;

    return-void
.end method


# virtual methods
.method public final getCartStorage()Lru/rocketbank/core/model/shop/CartStorage;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->cartStorage:Lru/rocketbank/core/model/shop/CartStorage;

    return-object v0
.end method

.method public final getLoadShopItemsInteractor()Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->loadShopItemsInteractor:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

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

    .line 31
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor$observable$1;-><init>(Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create<Cart> \u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getShopApi()Lru/rocketbank/core/network/api/ShopApi;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    return-object v0
.end method

.method public final setLoadShopItemsInteractor(Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->loadShopItemsInteractor:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .line 25
    invoke-super {p0}, Lru/rocketbank/core/utils/Interactor;->unsubscribe()V

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/LoadCartInteractor;->loadShopItemsInteractor:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->unsubscribe()V

    return-void

    :cond_0
    return-void
.end method
