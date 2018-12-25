.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader$ItemViewHeaderHolder;
    }
.end annotation


# instance fields
.field private amount:I

.field private inProgress:Landroid/databinding/ObservableBoolean;

.field private nextPeriodExists:Z

.field private final onChooseDate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onNextPeriod:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onPrevPeriod:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private period:Ljava/lang/String;

.field private prevPeriodExists:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "period"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 72
    invoke-direct {p0, v1, v0, v2, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->amount:I

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->period:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onPrevPeriod:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onNextPeriod:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onChooseDate:Lkotlin/jvm/functions/Function0;

    .line 73
    new-instance p1, Landroid/databinding/ObservableBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->inProgress:Landroid/databinding/ObservableBoolean;

    .line 74
    iput-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->nextPeriodExists:Z

    .line 75
    iput-boolean p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->prevPeriodExists:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const-string p2, ""

    :cond_1
    move-object v2, p2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 72
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .locals 1

    .line 72
    iget v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->amount:I

    return v0
.end method

.method public final getInProgress()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->inProgress:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getNextPeriodExists()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->nextPeriodExists:Z

    return v0
.end method

.method public final getOnChooseDate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onChooseDate:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnNextPeriod()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onNextPeriod:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnPrevPeriod()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onPrevPeriod:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getPeriod()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->period:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrevPeriodExists()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->prevPeriodExists:Z

    return v0
.end method

.method public final onDateClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onChooseDate:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method

.method public final onLeftArrowClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->prevPeriodExists:Z

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onPrevPeriod:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method

.method public final onRightArrowClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->nextPeriodExists:Z

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onNextPeriod:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method

.method public final setAmount(I)V
    .locals 0

    .line 72
    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->amount:I

    return-void
.end method

.method public final setInProgress(Landroid/databinding/ObservableBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->inProgress:Landroid/databinding/ObservableBoolean;

    return-void
.end method

.method public final setNextPeriodExists(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->nextPeriodExists:Z

    return-void
.end method

.method public final setPeriod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->period:Ljava/lang/String;

    return-void
.end method

.method public final setPrevPeriodExists(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->prevPeriodExists:Z

    return-void
.end method
