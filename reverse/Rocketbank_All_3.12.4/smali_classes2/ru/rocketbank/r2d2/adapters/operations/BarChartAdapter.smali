.class public Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;
.super Lru/rocketbank/core/widgets/BarChartView$Adapter;
.source "BarChartAdapter.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private maxValue:D

.field private percent:D

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lru/rocketbank/core/widgets/BarChartView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->context:Landroid/content/Context;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 4

    .line 57
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->getProportialSize(I)F

    move-result p1

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    const-wide v2, 0x3fc3333333333333L    # 0.15

    if-ltz p1, :cond_0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const p1, -0x251cd

    return p1

    :cond_0
    cmpl-double p1, v0, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    if-ltz p1, :cond_1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    const p1, -0xa84d9

    return p1

    :cond_1
    cmpl-double p1, v0, v2

    const-wide v2, 0x3fd999999999999aL    # 0.4

    if-ltz p1, :cond_2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    const p1, -0xea8c7

    return p1

    :cond_2
    cmpl-double p1, v0, v2

    const-wide v2, 0x3fe199999999999aL    # 0.55

    if-ltz p1, :cond_3

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    const p1, -0x20c4c5

    return p1

    :cond_3
    cmpl-double p1, v0, v2

    const-wide v2, 0x3fe6666666666666L    # 0.7

    if-ltz p1, :cond_4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_4

    const p1, -0x1ebb97

    return p1

    :cond_4
    cmpl-double p1, v0, v2

    if-ltz p1, :cond_5

    const-wide v2, 0x3feb333333333333L    # 0.85

    cmpg-double p1, v0, v2

    if-gez p1, :cond_5

    const p1, -0x33b97e

    return p1

    :cond_5
    const p1, -0x4be191

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHit(I)Ljava/lang/String;
    .locals 5

    .line 96
    iget-wide v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 98
    iget-wide v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " K"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLabelName(I)Ljava/lang/String;
    .locals 2

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    neg-int p1, v1

    const/4 v1, 0x2

    .line 81
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const-string p1, "calendar"

    .line 83
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->monthNameShort(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProportialSize(I)F
    .locals 4

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    neg-double v0, v0

    .line 53
    :cond_0
    iget-wide v2, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->percent:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setValues(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    move-object p1, v0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    .line 25
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 26
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 31
    :cond_0
    iget-wide v2, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    const-string v4, "value"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    invoke-static {v0, v1}, Lru/rocketbank/core/widgets/BarChartView$Adapter;->getNearMax5(D)D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    .line 38
    iget-wide v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->maxValue:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->percent:D

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/operations/BarChartAdapter;->notifyDataSetChanged()V

    return-void
.end method
