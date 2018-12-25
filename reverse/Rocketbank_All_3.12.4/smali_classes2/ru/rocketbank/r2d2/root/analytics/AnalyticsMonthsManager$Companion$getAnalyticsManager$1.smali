.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$1;
.super Ljava/lang/Object;
.source "AnalyticsMonthsManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;->getAnalyticsManager(Lru/rocketbank/core/network/api/AnalyticsApi;[ILjava/util/Calendar;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $jointIds:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$1;->$jointIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$1;->call(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;
    .locals 3

    .line 86
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$1;->$jointIds:[I

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getFirstOperationDate()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;->createAnalyticsMonthManager([ILjava/util/Calendar;)Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    move-result-object p1

    return-object p1
.end method
