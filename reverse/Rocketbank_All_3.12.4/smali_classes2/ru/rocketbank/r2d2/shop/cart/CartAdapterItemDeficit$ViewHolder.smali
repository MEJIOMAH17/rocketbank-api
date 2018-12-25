.class public final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;
.super Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;->bind(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V

    .line 180
    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;

    .line 181
    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;->getDeficit()Landroid/databinding/ObservableDouble;

    move-result-object v1

    invoke-virtual {v1}, Landroid/databinding/ObservableDouble;->get()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-nez v5, :cond_0

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v3, "binding.textView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    .line 186
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;->getDeficit()Landroid/databinding/ObservableDouble;

    move-result-object v0

    invoke-virtual {v0}, Landroid/databinding/ObservableDouble;->get()D

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->createCartItemAmountText(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    iget-object v3, v3, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v4, "binding.textView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f1100a8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;->buttonQuestion:Landroid/widget/ImageButton;

    new-instance v1, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder$bind$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;
    .locals 1

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    return-object v0
.end method
