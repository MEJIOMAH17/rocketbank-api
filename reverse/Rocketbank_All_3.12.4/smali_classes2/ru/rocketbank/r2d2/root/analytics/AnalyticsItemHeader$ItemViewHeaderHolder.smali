.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader$ItemViewHeaderHolder;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemViewHeaderHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader$ItemViewHeaderHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 1

    const-string v0, "analyticsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;->bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader$ItemViewHeaderHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
    .locals 1

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader$ItemViewHeaderHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    return-object v0
.end method
