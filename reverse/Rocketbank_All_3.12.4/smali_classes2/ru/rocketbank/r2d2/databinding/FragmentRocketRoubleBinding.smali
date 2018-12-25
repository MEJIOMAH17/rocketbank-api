.class public Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentRocketRoubleBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final appBar:Landroid/widget/FrameLayout;

.field public final cardOverlay:Landroid/view/View;

.field public final fab:Landroid/support/design/widget/FloatingActionButton;

.field public final feed:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final headerOverlay:Landroid/view/View;

.field private mDirtyFlags:J

.field private mModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

.field public final swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarReal:Landroid/support/v7/widget/Toolbar;

.field public final videoView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09005a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090408

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090265

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902f6

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901b5

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c7

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09036b

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090172

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903db

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ca

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090170

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 143
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mDirtyFlags:J

    .line 66
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 67
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->appBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x7

    .line 68
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->cardOverlay:Landroid/view/View;

    const/16 v1, 0xc

    .line 69
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v1, 0x9

    .line 70
    aget-object v1, p1, v1

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->feed:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/4 v1, 0x6

    .line 71
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->headerOverlay:Landroid/view/View;

    .line 72
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 74
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/16 v0, 0xb

    .line 75
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x4

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    .line 77
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x5

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0xa

    .line 79
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x2

    .line 80
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->videoView:Landroid/view/TextureView;

    .line 81
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->setRootTag(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;
    .locals 1

    .line 163
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;
    .locals 2

    const-string v0, "layout/fragment_rocket_rouble_0"

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
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

    .line 170
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;
    .locals 1

    .line 155
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;
    .locals 3

    const v0, 0x7f0c00f7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;
    .locals 1

    .line 147
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;
    .locals 1

    const v0, 0x7f0c00f7

    .line 151
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 134
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 136
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mDirtyFlags:J

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getModel()Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;
    .locals 1

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 98
    monitor-exit p0

    return v0

    .line 100
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

    .line 88
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 89
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 90
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

.method public setModel(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->mModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x3a

    if-ne v0, p1, :cond_0

    .line 108
    check-cast p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;->setModel(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
