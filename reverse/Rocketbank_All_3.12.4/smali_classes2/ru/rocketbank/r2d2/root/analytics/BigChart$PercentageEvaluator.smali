.class Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;
.super Landroid/animation/FloatEvaluator;
.source "BigChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/BigChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PercentageEvaluator"
.end annotation


# instance fields
.field private _item:Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/analytics/BigChart;Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;->this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-direct {p0}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 460
    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;->_item:Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 1

    .line 465
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;->_item:Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    invoke-super {p0, p1, p2, p3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, v0, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->percentage:D

    .line 466
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;->this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/BigChart;->invalidate()V

    .line 467
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;->_item:Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;

    iget-wide p1, p1, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->percentage:D

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 456
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/analytics/BigChart$PercentageEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
