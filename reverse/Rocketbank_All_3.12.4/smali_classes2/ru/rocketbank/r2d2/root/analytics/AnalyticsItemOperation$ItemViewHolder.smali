.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 2

    const-string v0, "analyticsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    move-object v1, p1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;)V

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder$bind$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
    .locals 1

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation$ItemViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    return-object v0
.end method
