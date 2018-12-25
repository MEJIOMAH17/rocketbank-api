.class public Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;
.super Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
.source "FeedItemChosenMonthCashbackBindingV21Impl.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900ba

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903cc

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090255

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090259

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090257

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09025b

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090256

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09025a

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 33
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14

    move-object v13, p0

    const/4 v1, 0x1

    .line 36
    aget-object v1, p3, v1

    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/CardView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    const/4 v1, 0x7

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/16 v1, 0x8

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    aget-object v0, p3, v1

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/support/v7/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 106
    iput-wide v0, v13, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->mDirtyFlags:J

    .line 47
    iget-object v0, v13, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->root:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 48
    invoke-virtual {v13, v0}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {v13}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 97
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 99
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->mDirtyFlags:J

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 65
    monitor-exit p0

    return v0

    .line 67
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

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 56
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 57
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

.method public setFeed(Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->mFeed:Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x1f

    if-ne v0, p1, :cond_0

    .line 75
    check-cast p2, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;->setFeed(Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashback;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
