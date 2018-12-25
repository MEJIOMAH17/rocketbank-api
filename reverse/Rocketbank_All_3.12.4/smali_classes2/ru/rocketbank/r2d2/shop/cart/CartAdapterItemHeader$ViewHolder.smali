.class public final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader$ViewHolder;
.super Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    check-cast p1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;->getAmount()Landroid/databinding/ObservableDouble;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->setPrice(Landroid/databinding/ObservableDouble;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    return-object v0
.end method
