.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsMerchantFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->addOperations(Ljava/util/List;Lru/rocketbank/core/model/dto/analytics/AnalyticsOperations;Z)V
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
.field final synthetic $operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;->$operation:Lru/rocketbank/core/model/dto/operations/Operation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 80
    sget-object v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$addOperations$1;->$operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void
.end method
