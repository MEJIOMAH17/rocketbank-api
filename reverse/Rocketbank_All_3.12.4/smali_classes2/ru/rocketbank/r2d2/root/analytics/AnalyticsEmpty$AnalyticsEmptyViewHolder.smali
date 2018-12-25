.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsEmptyViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem$AnalyticsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)V
    .locals 1

    const-string v0, "analyticsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;

    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;->isJointAnalytics()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;->setIsJointAnalytics(Ljava/lang/Boolean;)V

    .line 204
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;->cunningCat:Lru/rocketbank/core/widgets/CunningCat;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CunningCat;->resetAnimation()V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;
    .locals 1

    .line 201
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;->binding:Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;

    return-object v0
.end method
