.class public final Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "DescriptionViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDescriptionViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DescriptionViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder\n*L\n1#1,17:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;

    move-result-object p1

    const-string v0, "LayoutOperationDescriptionBinding.bind(itemView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;->setData(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->rocketRublesInfo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    new-instance v1, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder$bind$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder$bind$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    return-void
.end method
