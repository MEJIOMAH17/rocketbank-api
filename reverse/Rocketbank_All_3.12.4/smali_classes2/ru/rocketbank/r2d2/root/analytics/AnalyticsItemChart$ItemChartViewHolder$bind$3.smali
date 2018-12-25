.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$3;
.super Ljava/lang/Object;
.source "AnalyticsAdapter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/OnTagSelectedListener;


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

    .line 129
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$3;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTagSelected(Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder$bind$3;->$analyticsItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->getOnTagSelectedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method
