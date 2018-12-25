.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$2;
.super Ljava/lang/Object;
.source "AnalyticsAdapter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/OnGroupSelectedListener;


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

    .line 124
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$2;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupSelected(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$2;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getOnGroupSelectedListener()Lkotlin/jvm/functions/Function5;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method
