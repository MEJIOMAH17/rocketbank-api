.class final Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;
.super Lru/rocketbank/core/widgets/BarChartView$Adapter;
.source "BarChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/BarChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DemoAdapter"
.end annotation


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private final percent:F

.field final synthetic this$0:Lru/rocketbank/core/widgets/BarChartView;

.field private values:[F


# direct methods
.method public constructor <init>(Lru/rocketbank/core/widgets/BarChartView;)V
    .locals 2

    .line 876
    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->this$0:Lru/rocketbank/core/widgets/BarChartView;

    invoke-direct {p0}, Lru/rocketbank/core/widgets/BarChartView$Adapter;-><init>()V

    .line 849
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    const/16 p1, 0x15

    .line 850
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->values:[F

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 878
    :goto_0
    iget-object v1, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 879
    iget-object v1, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->values:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 880
    iget-object p1, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->values:[F

    aget p1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 884
    iput p1, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->percent:F

    return-void

    nop

    :array_0
    .array-data 4
        0x447a0000    # 1000.0f
        0x44fa0000    # 2000.0f
        0x453b8000    # 3000.0f
        0x457a0000    # 4000.0f
        0x459c4000    # 5000.0f
        0x45bb8000    # 6000.0f
        0x45dac000    # 7000.0f
        0x447a0000    # 1000.0f
        0x44fa0000    # 2000.0f
        0x453b8000    # 3000.0f
        0x457a0000    # 4000.0f
        0x459c4000    # 5000.0f
        0x45bb8000    # 6000.0f
        0x45dac000    # 7000.0f
        0x447a0000    # 1000.0f
        0x44fa0000    # 2000.0f
        0x453b8000    # 3000.0f
        0x457a0000    # 4000.0f
        0x459c4000    # 5000.0f
        0x45bb8000    # 6000.0f
        0x45dac000    # 7000.0f
    .end array-data
.end method


# virtual methods
.method public final getColor(I)I
    .locals 4

    .line 902
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->getProportialSize(I)F

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

    const p1, 0xff57b27

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

.method public final getCount()I
    .locals 1

    .line 936
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->values:[F

    array-length v0, v0

    return v0
.end method

.method public final getHit(I)Ljava/lang/String;
    .locals 0

    const-string p1, "0x0000"

    return-object p1
.end method

.method public final getId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLabelName(I)Ljava/lang/String;
    .locals 2

    .line 923
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 924
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 925
    new-instance p1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 926
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getProportialSize(I)F
    .locals 1

    .line 894
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->values:[F

    aget p1, v0, p1

    .line 895
    iget v0, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->percent:F

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public final getValue(I)Ljava/lang/String;
    .locals 1

    .line 931
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$DemoAdapter;->values:[F

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
