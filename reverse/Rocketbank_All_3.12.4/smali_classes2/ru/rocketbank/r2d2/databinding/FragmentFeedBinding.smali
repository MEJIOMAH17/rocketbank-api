.class public Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentFeedBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final atmFreeLeftView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final cardOverlay:Landroid/view/View;

.field public final catView:Landroid/widget/ImageView;

.field public final coverImage:Landroid/widget/ImageView;

.field public final feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field public final header:Landroid/widget/FrameLayout;

.field private mDirtyFlags:J

.field private mFeed:Lru/rocketbank/r2d2/root/feed/FeedModel;

.field public final money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final nothingFound:Landroid/widget/FrameLayout;

.field public final nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final realToolbar:Landroid/support/v7/widget/Toolbar;

.field public final rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

.field public final root:Landroid/widget/FrameLayout;

.field public final swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final userPic:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ae

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090111

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903ff

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902f6

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090265

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09005e

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09036c

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090173

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09027e

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900cc

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09027f

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902c8

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903dd

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09017f

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 159
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->mDirtyFlags:J

    .line 78
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x11

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 79
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->atmFreeLeftView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/16 v1, 0x8

    .line 80
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->cardOverlay:Landroid/view/View;

    const/16 v1, 0xc

    .line 81
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->catView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 82
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->coverImage:Landroid/widget/ImageView;

    const/16 v1, 0xa

    .line 83
    aget-object v1, p1, v1

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/16 v1, 0x10

    .line 84
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x1

    .line 85
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->header:Landroid/widget/FrameLayout;

    const/4 v1, 0x5

    .line 86
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/16 v1, 0xb

    .line 87
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->nothingFound:Landroid/widget/FrameLayout;

    const/16 v1, 0xd

    .line 88
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0xe

    .line 89
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x4

    .line 90
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    .line 91
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->root:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->root:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 93
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x7

    .line 94
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0xf

    .line 95
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->toolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x3

    .line 96
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->userPic:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->setRootTag(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 1

    .line 179
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 2

    const-string v0, "layout/fragment_feed_0"

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
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

    .line 186
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 1

    .line 171
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 3

    const v0, 0x7f0c00d8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 1

    .line 163
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 1

    const v0, 0x7f0c00d8

    .line 167
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 150
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 152
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->mDirtyFlags:J

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFeed()Lru/rocketbank/r2d2/root/feed/FeedModel;
    .locals 1

    .line 137
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->mFeed:Lru/rocketbank/r2d2/root/feed/FeedModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 114
    monitor-exit p0

    return v0

    .line 116
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

    .line 104
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 105
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->requestRebind()V

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

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFeed(Lru/rocketbank/r2d2/root/feed/FeedModel;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->mFeed:Lru/rocketbank/r2d2/root/feed/FeedModel;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x1f

    if-ne v0, p1, :cond_0

    .line 124
    check-cast p2, Lru/rocketbank/r2d2/root/feed/FeedModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->setFeed(Lru/rocketbank/r2d2/root/feed/FeedModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
