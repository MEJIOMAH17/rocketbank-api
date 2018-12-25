.class public final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;
.super Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;
    }
.end annotation


# instance fields
.field private cartItem:Lru/rocketbank/core/model/shop/CartItem;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 3

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->Companion:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;->getITEM_TYPE_CART_ITEM()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;-><init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;->cartItem:Lru/rocketbank/core/model/shop/CartItem;

    return-void
.end method


# virtual methods
.method public final getCartItem()Lru/rocketbank/core/model/shop/CartItem;
    .locals 1

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;->cartItem:Lru/rocketbank/core/model/shop/CartItem;

    return-object v0
.end method

.method public final setCartItem(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;->cartItem:Lru/rocketbank/core/model/shop/CartItem;

    return-void
.end method
