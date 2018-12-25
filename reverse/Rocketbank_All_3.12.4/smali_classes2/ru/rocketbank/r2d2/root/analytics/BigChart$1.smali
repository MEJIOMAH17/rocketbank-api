.class Lru/rocketbank/r2d2/root/analytics/BigChart$1;
.super Ljava/lang/Object;
.source "BigChart.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/BigChart;->setPercentage(Ljava/util/List;Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/BigChart;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$1;->this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 265
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$1;->this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/BigChart;->invalidate()V

    return-void
.end method
