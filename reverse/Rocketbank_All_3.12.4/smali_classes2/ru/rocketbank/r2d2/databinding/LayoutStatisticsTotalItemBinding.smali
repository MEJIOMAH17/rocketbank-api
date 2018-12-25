.class public Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutStatisticsTotalItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final amount:Lru/rocketbank/core/widgets/RocketTextView;

.field public final forMonth:Lru/rocketbank/core/widgets/RocketTextView;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/r2d2/activities/operation/model/TotalItem;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field public final rocketrouble:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090181

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 133
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mDirtyFlags:J

    .line 37
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 38
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->amount:Lru/rocketbank/core/widgets/RocketTextView;

    .line 39
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->amount:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 40
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->forMonth:Lru/rocketbank/core/widgets/RocketTextView;

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 43
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->rocketrouble:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->rocketrouble:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;
    .locals 1

    .line 153
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;
    .locals 2

    const-string v0, "layout/layout_statistics_total_item_0"

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
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

    .line 160
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;
    .locals 1

    .line 145
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;
    .locals 3

    const v0, 0x7f0c0145

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;
    .locals 1

    .line 137
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;
    .locals 1

    const v0, 0x7f0c0145

    .line 141
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mItem:Lru/rocketbank/r2d2/activities/operation/model/TotalItem;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v4}, Lru/rocketbank/r2d2/activities/operation/model/TotalItem;->getRocketRouble()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v4}, Lru/rocketbank/r2d2/activities/operation/model/TotalItem;->getAmount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    cmp-long v4, v7, v2

    if-eqz v4, :cond_1

    .line 126
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->amount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->rocketrouble:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getItem()Lru/rocketbank/r2d2/activities/operation/model/TotalItem;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mItem:Lru/rocketbank/r2d2/activities/operation/model/TotalItem;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

.method public setItem(Lru/rocketbank/r2d2/activities/operation/model/TotalItem;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mItem:Lru/rocketbank/r2d2/activities/operation/model/TotalItem;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x31

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Lru/rocketbank/r2d2/activities/operation/model/TotalItem;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;->setItem(Lru/rocketbank/r2d2/activities/operation/model/TotalItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
