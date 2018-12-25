.class public final Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "ActionsViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/operation/vh/ActionsHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionsViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionsViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder\n*L\n1#1,52:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationActionBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationActionBinding;

    move-result-object p1

    const-string v0, "binding"

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/root/operation/vh/ActionsHandler;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationActionBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/ActionsHandler;)V

    return-void
.end method


# virtual methods
.method public final onBind()V
    .locals 3

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 22
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->isHasReceipt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 28
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/R$id;->receipt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const-string v2, "itemView.receipt"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_2
    return-void
.end method

.method public final onReceipt()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 44
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getReceiptUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    invoke-static {v1, v0}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public final onSupport()V
    .locals 4

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 36
    sget-object v1, Lru/rocketbank/r2d2/activities/SupportChatActivity;->Companion:Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;->startActivity(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_1
    return-void
.end method
