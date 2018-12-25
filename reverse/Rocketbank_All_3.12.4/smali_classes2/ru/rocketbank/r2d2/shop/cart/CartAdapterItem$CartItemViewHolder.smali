.class public abstract Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CartItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->setOnUpdate(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
