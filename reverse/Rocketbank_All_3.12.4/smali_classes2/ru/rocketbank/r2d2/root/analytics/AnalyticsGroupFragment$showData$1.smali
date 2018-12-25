.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;
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
.field final synthetic $category:Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->$category:Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->$category:Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    const-string v2, "category"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->access$getIndex$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;)I

    move-result v3

    iget-object v4, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->$category:Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    const-string v5, "category"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "category.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;->$category:Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    const-string v6, "category"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getIcon()Ljava/lang/String;

    move-result-object v5

    const-string v6, "category.icon"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->onCategorySelected(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
