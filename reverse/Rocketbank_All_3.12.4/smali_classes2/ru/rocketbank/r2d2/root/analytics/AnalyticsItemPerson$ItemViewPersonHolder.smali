.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson$ItemViewPersonHolder;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemViewPersonHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson$ItemViewPersonHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 1

    const-string v0, "analyticsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson$ItemViewPersonHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;

    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;
    .locals 1

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemPerson$ItemViewPersonHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;

    return-object v0
.end method
