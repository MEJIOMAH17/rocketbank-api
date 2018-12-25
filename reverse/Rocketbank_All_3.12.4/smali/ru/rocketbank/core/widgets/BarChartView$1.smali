.class final Lru/rocketbank/core/widgets/BarChartView$1;
.super Landroid/database/DataSetObserver;
.source "BarChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/BarChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/BarChartView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/BarChartView;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lru/rocketbank/core/widgets/BarChartView$1;->this$0:Lru/rocketbank/core/widgets/BarChartView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 376
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 378
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$1;->this$0:Lru/rocketbank/core/widgets/BarChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/BarChartView;->refreshContent(Z)V

    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    .line 383
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 385
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$1;->this$0:Lru/rocketbank/core/widgets/BarChartView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/BarChartView;->refreshContent(Z)V

    return-void
.end method
