.class Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;
.super Ljava/lang/Object;
.source "BigChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/BigChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigChartItem"
.end annotation


# instance fields
.field public amount:D

.field public color:Ljava/lang/Integer;

.field public icon:Ljava/lang/String;

.field public percentage:D

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;


# direct methods
.method private constructor <init>(Lru/rocketbank/r2d2/root/analytics/BigChart;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;->this$0:Lru/rocketbank/r2d2/root/analytics/BigChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/rocketbank/r2d2/root/analytics/BigChart;Lru/rocketbank/r2d2/root/analytics/BigChart$1;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/BigChart$BigChartItem;-><init>(Lru/rocketbank/r2d2/root/analytics/BigChart;)V

    return-void
.end method
