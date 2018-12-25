.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$1;
.super Ljava/lang/Object;
.source "AnalyticsAdapter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;->bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$1;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCategorySelected(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$1;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getOnCategorySelectedListener()Lkotlin/jvm/functions/Function4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2, p4, p5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method
