.class public final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;
.super Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopCartAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopCartAdapter.kt\nru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder\n*L\n1#1,193:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

.field private final onDeleteItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->onItemClick:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->onDeleteItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V

    .line 151
    check-cast p1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem;->getCartItem()Lru/rocketbank/core/model/shop/CartItem;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->setItem(Lru/rocketbank/core/model/shop/CartItem;)V

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "binding.textViewAmount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartItem;->getAmount()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->createCartItemAmountText(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$1;

    invoke-direct {v2, p0, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;Lru/rocketbank/core/model/shop/CartItem;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->deleteButton:Lru/rocketbank/core/widgets/RocketButton;

    new-instance v2, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$2;

    invoke-direct {v2, p0, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder$bind$2;-><init>(Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;Lru/rocketbank/core/model/shop/CartItem;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->attributes:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 158
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartItem;->getSize()Lru/rocketbank/core/model/shop/Size;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    iget-object v3, v3, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->attributes:Landroid/widget/LinearLayout;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lru/rocketbank/r2d2/databinding/ShopSelectedSizeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopSelectedSizeBinding;

    move-result-object v3

    const-string v5, "b"

    .line 161
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const v6, 0x7f1103fc

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lru/rocketbank/core/model/shop/Size;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v2, 0x7f11041c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Lru/rocketbank/r2d2/databinding/ShopSelectedSizeBinding;->setDescription(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartItem;->getColor()Lru/rocketbank/core/model/shop/Color;

    move-result-object v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c01b2

    .line 164
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->attributes:Landroid/widget/LinearLayout;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartItem;->getColor()Lru/rocketbank/core/model/shop/Color;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->attributes:Landroid/widget/LinearLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0, v4}, Lru/rocketbank/r2d2/databinding/ShopSelectedColorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopSelectedColorBinding;

    move-result-object v0

    const-string v1, "b"

    .line 168
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ShopSelectedColorBinding;->setColor(Lru/rocketbank/core/model/shop/Color;)V

    .line 169
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ShopSelectedColorBinding;->corner:Landroid/widget/ImageView;

    const-string v1, "b.corner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Color;->getColorInt()I

    move-result p1

    invoke-static {p1}, Landroid/arch/lifecycle/MethodCallsLogger;->isSuperLightColor(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
    .locals 1

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    return-object v0
.end method

.method public final getOnDeleteItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->onDeleteItemClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/CartItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemItem$ViewHolder;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
