.class public abstract Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnalyticsViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 1

    const-string v0, "analyticsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder$bind$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;->setOnUpdate(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
