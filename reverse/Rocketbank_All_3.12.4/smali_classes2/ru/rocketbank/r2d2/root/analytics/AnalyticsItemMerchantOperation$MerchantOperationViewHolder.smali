.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MerchantOperationViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 2

    const-string v0, "analyticsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    move-object v1, p1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;)V

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    sget-object v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$Companion;->getALPHA()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->setAlpha(Ljava/lang/Float;)V

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder$bind$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    new-instance p1, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    const-string v1, "binding.imageViewItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->getItem()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->getIcon()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    const-string v1, "binding.imageViewItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->getItem()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    const-string v1, "binding.imageViewItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080254

    invoke-static {v0, v1, p1}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;ILjp/wasabeef/glide/transformations/CropCircleTransformation;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;
    .locals 1

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation$MerchantOperationViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    return-object v0
.end method
