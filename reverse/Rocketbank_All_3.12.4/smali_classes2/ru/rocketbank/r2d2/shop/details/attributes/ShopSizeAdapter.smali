.class public final Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShopSizeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private onCheckChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/Size;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I

.field private final sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Size;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/Size;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sizes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCheckChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->sizes:Ljava/util/List;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->onCheckChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->selectedPosition:I

    return-void
.end method

.method public static final synthetic access$selectItem(Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->selectItem(I)V

    return-void
.end method

.method private final selectItem(I)V
    .locals 2

    .line 29
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->selectedPosition:I

    .line 30
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->selectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 32
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->notifyItemChanged(I)V

    .line 34
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->onCheckChanged:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->sizes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->sizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOnCheckChanged()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/Size;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->onCheckChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSelectedPosition()I
    .locals 1

    .line 15
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->selectedPosition:I

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->sizes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/shop/Size;

    iget v1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->selectedPosition:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$onBindViewHolder$1;

    invoke-direct {v2, p0, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$onBindViewHolder$1;-><init>(Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;I)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1, v2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->bind(Lru/rocketbank/core/model/shop/Size;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 25
    new-instance v0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    move-result-object p1

    const-string p2, "RadioButtonOrangeBinding\u2026tInflater, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;)V

    return-object v0
.end method

.method public final setOnCheckChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/Size;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->onCheckChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 0

    .line 15
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->selectedPosition:I

    return-void
.end method
