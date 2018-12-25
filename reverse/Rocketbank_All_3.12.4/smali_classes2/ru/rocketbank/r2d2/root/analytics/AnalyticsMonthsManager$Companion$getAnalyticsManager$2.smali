.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;
.super Ljava/lang/Object;
.source "AnalyticsMonthsManager.kt"

# interfaces
.implements Lrx/functions/Action1;


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
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;->INSTANCE:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;->call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V

    return-void
.end method

.method public final call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V
    .locals 0

    .line 87
    invoke-static {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->access$setAnalyticsMonthsManager$cp(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V

    return-void
.end method
