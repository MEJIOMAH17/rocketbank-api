.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;
.super Ljava/lang/Object;
.source "AnalyticsMonthsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;

.field private static analyticsMonthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;


# instance fields
.field private final intervalInMonths:I

.field private final jointIds:[I

.field private final periodBegin:Ljava/util/Calendar;

.field private final periodEnd:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager$Companion;

    return-void
.end method

.method public constructor <init>([ILjava/util/Calendar;)V
    .locals 1

    const-string v0, "firstOperationDate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->jointIds:[I

    .line 20
    invoke-static {p2}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->clearTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string p2, "Calendar.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->clearTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodEnd:Ljava/util/Calendar;

    .line 24
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodEnd:Ljava/util/Calendar;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodEnd:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodEnd:Ljava/util/Calendar;

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/utils/CalendarUtils;->monthsInterval(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->intervalInMonths:I

    return-void
.end method

.method public static final synthetic access$getAnalyticsMonthsManager$cp()Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;
    .locals 1

    .line 12
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->analyticsMonthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    return-object v0
.end method

.method public static final synthetic access$isActual(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;[ILjava/util/Calendar;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->isActual([ILjava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAnalyticsMonthsManager$cp(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V
    .locals 0

    .line 12
    sput-object p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->analyticsMonthsManager:Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    return-void
.end method

.method private final getMonthNumberByIndex(I)I
    .locals 1

    .line 68
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->getDateTimeByIndex(I)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method private final isActual([ILjava/util/Calendar;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->jointIds:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->month(Ljava/util/Calendar;)I

    move-result p1

    if-eqz p2, :cond_0

    invoke-static {p2}, Lru/rocketbank/r2d2/utils/CalendarUtils;->month(Ljava/util/Calendar;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->year(Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p2}, Lru/rocketbank/r2d2/utils/CalendarUtils;->year(Ljava/util/Calendar;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->dayOfMonth(Ljava/util/Calendar;)I

    move-result p1

    invoke-static {p2}, Lru/rocketbank/r2d2/utils/CalendarUtils;->dayOfMonth(Ljava/util/Calendar;)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final getDateTimeByIndex(I)Ljava/util/Calendar;
    .locals 2

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    invoke-static {v0}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public final getIntervalInMonths()I
    .locals 1

    .line 17
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->intervalInMonths:I

    return v0
.end method

.method public final getJointIds()[I
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->jointIds:[I

    return-object v0
.end method

.method public final getMonthNameByIndex(I)Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->getMonthNumberByIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getPeriodBegin()Ljava/util/Calendar;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    invoke-static {v0}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final getPeriodEnd()Ljava/util/Calendar;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodEnd:Ljava/util/Calendar;

    invoke-static {v0}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final isBeginPeriod(Ljava/util/Calendar;)Z
    .locals 2

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->year(Ljava/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    invoke-static {v1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->year(Ljava/util/Calendar;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->month(Ljava/util/Calendar;)I

    move-result p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodBegin:Ljava/util/Calendar;

    invoke-static {v0}, Lru/rocketbank/r2d2/utils/CalendarUtils;->month(Ljava/util/Calendar;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEndPeriod(Ljava/util/Calendar;)Z
    .locals 2

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->year(Ljava/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodEnd:Ljava/util/Calendar;

    invoke-static {v1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->year(Ljava/util/Calendar;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->month(Ljava/util/Calendar;)I

    move-result p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->periodEnd:Ljava/util/Calendar;

    invoke-static {v0}, Lru/rocketbank/r2d2/utils/CalendarUtils;->month(Ljava/util/Calendar;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final nextPeriod(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->isEndPeriod(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x2

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public final prevPeriod(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->isBeginPeriod(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x2

    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method
