.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsBaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$2;->invoke(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1$2;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$processData$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->getHeader()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
