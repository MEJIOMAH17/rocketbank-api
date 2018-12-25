.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemChartViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 4

    const-string v0, "analyticsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;->bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    .line 111
    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getData()Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/R$id;->chart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getData()Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getCategories()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setAnalyticsCategories(Ljava/util/List;)V

    .line 113
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/R$id;->chart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getData()Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getGroups()Ljava/util/List;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setAnalyticsGroups(Ljava/util/List;)V

    .line 115
    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/R$id;->chart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setAnalyticsTags(Ljava/util/List;)V

    .line 118
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->chart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/BigChart;

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setOnCategorySelectedListener(Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;)V

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->chart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/BigChart;

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$2;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setOnGroupSelectedListener(Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->chart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/BigChart;

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$3;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$3;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/BigChart;->setOnTagSelectedListener(Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    return-object v0
.end method
