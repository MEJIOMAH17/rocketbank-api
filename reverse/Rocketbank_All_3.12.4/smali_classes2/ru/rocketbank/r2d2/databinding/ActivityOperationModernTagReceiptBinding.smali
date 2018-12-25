.class public Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityOperationModernTagReceiptBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final appBar:Landroid/widget/FrameLayout;

.field public final cardOverlay:Landroid/view/View;

.field public final header:Landroid/widget/FrameLayout;

.field public final headerOverlay:Landroid/view/View;

.field public final headerView:Landroid/view/TextureView;

.field public final inThisMonth:Lru/rocketbank/core/widgets/RocketTextView;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final operation:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final overlay:Landroid/view/View;

.field public final realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarReal:Landroid/support/v7/widget/Toolbar;

.field public final toolbarWrapper:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09005a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ae

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901b2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09029d

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901e0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09004d

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901b5

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09036b

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090292

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903de

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903db

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ca

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 135
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->mDirtyFlags:J

    .line 70
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xf

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 71
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v1, 0x1

    .line 72
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->appBar:Landroid/widget/FrameLayout;

    const/16 v1, 0x9

    .line 73
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->cardOverlay:Landroid/view/View;

    const/4 v1, 0x2

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->header:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    .line 75
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->headerOverlay:Landroid/view/View;

    const/4 v1, 0x3

    .line 76
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->headerView:Landroid/view/TextureView;

    const/4 v1, 0x5

    .line 77
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->inThisMonth:Lru/rocketbank/core/widgets/RocketTextView;

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 80
    aget-object v0, p1, v0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->operation:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/4 v0, 0x4

    .line 81
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->overlay:Landroid/view/View;

    const/16 v0, 0xe

    .line 82
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0xa

    .line 83
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x7

    .line 84
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0xd

    .line 85
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0xc

    .line 86
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->toolbarWrapper:Landroid/widget/FrameLayout;

    .line 87
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->setRootTag(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;
    .locals 1

    .line 155
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;
    .locals 2

    const-string v0, "layout/activity_operation_modern_tag_receipt_0"

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
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

    .line 162
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;
    .locals 1

    .line 147
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;
    .locals 3

    const v0, 0x7f0c0049

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;
    .locals 1

    .line 139
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;
    .locals 1

    const v0, 0x7f0c0049

    .line 143
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 126
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 128
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->mDirtyFlags:J

    .line 129
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

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 104
    monitor-exit p0

    return v0

    .line 106
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

    .line 94
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 95
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 96
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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
