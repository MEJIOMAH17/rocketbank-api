.class public Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;
.super Landroid/databinding/ViewDataBinding;
.source "AnalyticsItemSectionBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field public final textViewItem:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 133
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mDirtyFlags:J

    .line 34
    sget-object v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 35
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    .line 36
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 37
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 39
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->setRootTag(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;
    .locals 1

    .line 153
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;
    .locals 2

    const-string v0, "layout/analytics_item_section_0"

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
    new-instance v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;
    .locals 1

    .line 145
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;
    .locals 3

    const v0, 0x7f0c0072

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;
    .locals 1

    .line 137
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;
    .locals 1

    const v0, 0x7f0c0072

    .line 141
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 101
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3

    and-long v8, v0, v6

    cmp-long v0, v8, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->getText()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->getColor()I

    move-result v5

    .line 118
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;->getIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    cmp-long v4, v8, v2

    if-eqz v4, :cond_1

    .line 125
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v5}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 102
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getItem()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;
    .locals 1

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 58
    monitor-exit p0

    return v0

    .line 60
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

    .line 48
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 49
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
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

.method public setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;)V
    .locals 6

    .line 77
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->mDirtyFlags:J

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 81
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->notifyPropertyChanged(I)V

    .line 82
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 80
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

    .line 68
    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
