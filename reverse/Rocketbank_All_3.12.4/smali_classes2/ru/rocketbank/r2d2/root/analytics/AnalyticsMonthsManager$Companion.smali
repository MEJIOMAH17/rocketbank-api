.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;
.super Ljava/lang/Object;
.source "AnalyticsMonthsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic getAnalyticsManager$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;Lru/rocketbank/core/network/api/AnalyticsApi;[ILjava/util/Calendar;ILjava/lang/Object;)Lrx/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 75
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;->getAnalyticsManager(Lru/rocketbank/core/network/api/AnalyticsApi;[ILjava/util/Calendar;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final isAnalyticsMonthManagerActual([ILjava/util/Calendar;)Z
    .locals 2

    .line 95
    invoke-static {}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->access$getAnalyticsMonthsManager$cp()Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->access$getAnalyticsMonthsManager$cp()Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->access$isActual(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;[ILjava/util/Calendar;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public final createAnalyticsMonthManager([ILjava/util/Calendar;)Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;
    .locals 1

    if-eqz p2, :cond_0

    .line 99
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;-><init>([ILjava/util/Calendar;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAnalyticsManager(Lru/rocketbank/core/network/api/AnalyticsApi;[ILjava/util/Calendar;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/api/AnalyticsApi;",
            "[I",
            "Ljava/util/Calendar;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;",
            ">;"
        }
    .end annotation

    const-string v0, "analyticsApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 77
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    invoke-direct {v0, p2, p3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;-><init>([ILjava/util/Calendar;)V

    invoke-static {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->access$setAnalyticsMonthsManager$cp(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V

    .line 79
    :cond_0
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;

    invoke-direct {v0, p2, p3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;->isAnalyticsMonthManagerActual([ILjava/util/Calendar;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const-string v0, "date"

    .line 81
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-static {p3}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    sget-object v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->getDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->getDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3, p2}, Lru/rocketbank/core/network/api/AnalyticsApi;->analyticsSummary(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;

    move-result-object p1

    .line 86
    new-instance p3, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$1;

    invoke-direct {p3, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$1;-><init>([I)V

    check-cast p3, Lrx/functions/Func1;

    invoke-virtual {p1, p3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 87
    sget-object p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;->INSTANCE:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion$getAnalyticsManager$2;

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    .line 88
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 89
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    const-string p2, "analyticsApi.analyticsSu\u2026dSchedulers.mainThread())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 91
    :cond_1
    invoke-static {}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->access$getAnalyticsMonthsManager$cp()Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    const-string p2, "Observable.just(analyticsMonthsManager)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
