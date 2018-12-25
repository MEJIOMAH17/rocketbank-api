.class final Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopCartAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;->this$0:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;->$item:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;->this$0:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;->$item:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V

    return-void
.end method
