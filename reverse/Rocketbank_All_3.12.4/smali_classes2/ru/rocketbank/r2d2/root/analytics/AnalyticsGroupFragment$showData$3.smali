.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsGroupFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
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
.field final synthetic $merchant:Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;->$merchant:Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;->$merchant:Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    const-string v2, "merchant"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->onMerchantSelected(Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;)V

    return-void
.end method
