.class public Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
.super Landroid/databinding/ViewDataBinding;
.source "AnalyticsItemOperationBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final arrow:Landroid/widget/ImageView;

.field public final imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field public final textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewItem:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09005c

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 164
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mDirtyFlags:J

    .line 39
    sget-object v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 40
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 41
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    .line 42
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 47
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->setRootTag(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
    .locals 1

    .line 184
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
    .locals 2

    const-string v0, "layout/analytics_item_operation_0"

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
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

    .line 191
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
    .locals 1

    .line 176
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
    .locals 3

    const v0, 0x7f0c0071

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
    .locals 1

    .line 168
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;
    .locals 1

    const v0, 0x7f0c0071

    .line 172
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 109
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    const-wide/16 v7, 0x3

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_5

    if-eqz v6, :cond_0

    .line 125
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->getText()Ljava/lang/String;

    move-result-object v11

    .line 127
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->getColor()I

    move-result v12

    .line 129
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->getAmount()Ljava/lang/String;

    move-result-object v14

    .line 131
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;->getIcon()Ljava/lang/String;

    move-result-object v6

    move/from16 v18, v12

    move-object v12, v6

    move/from16 v6, v18

    goto :goto_0

    :cond_0
    move-object v11, v12

    move-object v14, v11

    move v6, v13

    :goto_0
    if-nez v12, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move v15, v13

    :goto_1
    cmp-long v16, v9, v4

    if-eqz v16, :cond_3

    if-eqz v15, :cond_2

    const-wide/16 v9, 0x8

    or-long v16, v2, v9

    :goto_2
    move-wide/from16 v2, v16

    goto :goto_3

    :cond_2
    const-wide/16 v9, 0x4

    or-long v16, v2, v9

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v15, :cond_4

    const/16 v9, 0x8

    move v13, v9

    :cond_4
    move/from16 v18, v13

    move v13, v6

    move/from16 v6, v18

    goto :goto_4

    :cond_5
    move-object v11, v12

    move-object v14, v11

    move v6, v13

    :goto_4
    and-long v9, v2, v7

    cmp-long v2, v9, v4

    if-eqz v2, :cond_6

    .line 154
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 156
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->imageViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 157
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->textViewItem:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getItem()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mDirtyFlags:J

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
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->requestRebind()V

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

.method public setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;)V
    .locals 6

    .line 85
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mItem:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 89
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->notifyPropertyChanged(I)V

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
    check-cast p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;->setItem(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
