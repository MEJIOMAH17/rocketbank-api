.class public Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
.super Landroid/databinding/ViewDataBinding;
.source "AnalyticsItemChartBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final chart:Lru/rocketbank/r2d2/root/analytics/BigChart;

.field private mDirtyFlags:J

.field private mI:Ljava/lang/Integer;

.field private final mboundView0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900d4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 99
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mDirtyFlags:J

    .line 33
    sget-object v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 34
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/root/analytics/BigChart;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->chart:Lru/rocketbank/r2d2/root/analytics/BigChart;

    .line 35
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->setRootTag(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
    .locals 1

    .line 119
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
    .locals 2

    const-string v0, "layout/analytics_item_chart_0"

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view tag isn\'t correct on view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
    .locals 1

    .line 111
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
    .locals 3

    const v0, 0x7f0c006e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
    .locals 1

    .line 103
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;
    .locals 1

    const v0, 0x7f0c006e

    .line 107
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 90
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 92
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getI()Ljava/lang/Integer;
    .locals 1

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mI:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 54
    monitor-exit p0

    return v0

    .line 56
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 44
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 45
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mDirtyFlags:J

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setI(Ljava/lang/Integer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->mI:Ljava/lang/Integer;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x29

    if-ne v0, p1, :cond_0

    .line 64
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;->setI(Ljava/lang/Integer;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
