.class public Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;
.super Landroid/databinding/ViewDataBinding;
.source "AnalyticsItemTagOperationBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final imageViewItem:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field public final textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewItem:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 152
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mDirtyFlags:J

    .line 38
    sget-object v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 39
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    .line 40
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 47
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->setRootTag(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;
    .locals 1

    .line 172
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;
    .locals 2

    const-string v0, "layout/analytics_item_tag_operation_0"

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
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

    .line 179
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;
    .locals 1

    .line 164
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;
    .locals 3

    const v0, 0x7f0c0074

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;
    .locals 1

    .line 156
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;
    .locals 1

    const v0, 0x7f0c0074

    .line 160
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 13

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 109
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->getCount()I

    move-result v0

    .line 126
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->getColor()I

    move-result v1

    .line 128
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->getAmount()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    move-object v6, v4

    move v0, v5

    move v1, v0

    .line 135
    :goto_0
    iget-object v9, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v9}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const v12, 0x7f0f000b

    invoke-virtual {v9, v12, v0, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    iget-object v9, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v9}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v9, v12, v0, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v4, v0

    move-object v6, v4

    move v1, v5

    :goto_1
    cmp-long v5, v7, v2

    if-eqz v5, :cond_2

    .line 143
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->imageViewItem:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewTint(Landroid/widget/ImageView;I)V

    .line 144
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v1, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewDate:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v1, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getItem()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 66
    monitor-exit p0

    return v0

    .line 68
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

    .line 56
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 57
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 58
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

.method public setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;)V
    .locals 6

    .line 85
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 89
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 88
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

    .line 76
    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemTagOperation;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
