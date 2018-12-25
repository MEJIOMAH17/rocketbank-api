.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsSummaryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $it:Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->$it:Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->$it:Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->$it:Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v2, "it.name"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->$it:Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getIcon()Ljava/lang/String;

    move-result-object v4

    const-string v2, "it.icon"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1;->$it:Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    const-string v5, "it"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getColor()Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;->onGroupSelected(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
