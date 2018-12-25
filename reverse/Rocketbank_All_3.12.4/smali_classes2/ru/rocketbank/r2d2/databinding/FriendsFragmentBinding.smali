.class public Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FriendsFragmentBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cat:Landroid/widget/ImageView;

.field public final fab:Landroid/support/design/widget/FloatingActionButton;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/FabHandler;

.field private mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field public final nothingFound:Landroid/widget/FrameLayout;

.field public final nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "include_toolbar"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x3

    aput v5, v3, v4

    new-array v5, v1, [I

    const v6, 0x7f0c010d

    aput v6, v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ba

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ce

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09027e

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900cb

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09027f

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 187
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    .line 56
    sget-object v1, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x7

    .line 57
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->cat:Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 58
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 59
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 60
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 61
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    .line 62
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mboundView1:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 64
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->nothingFound:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    .line 65
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x4

    .line 66
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x5

    .line 67
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x3

    .line 68
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    .line 69
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 70
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;
    .locals 1

    .line 207
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;
    .locals 2

    const-string v0, "layout/friends_fragment_0"

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
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

    .line 214
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;
    .locals 1

    .line 199
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;
    .locals 3

    const v0, 0x7f0c0109

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;
    .locals 1

    .line 191
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;
    .locals 1

    const v0, 0x7f0c0109

    .line 195
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    return-object p0
.end method

.method private onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    .line 140
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 151
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 154
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/FabHandler;

    const-wide/16 v6, 0x6

    and-long v8, v0, v6

    cmp-long v0, v8, v2

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;

    invoke-direct {v0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v0, v5}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/FabHandler;)Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding$OnClickListenerImpl;

    move-result-object v4

    :cond_1
    cmp-long v0, v8, v2

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 152
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/FabHandler;
    .locals 1

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/FabHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 88
    monitor-exit p0

    return v0

    .line 90
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 77
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 78
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->invalidateAll()V

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z

    move-result p1

    return p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/FabHandler;)V
    .locals 6

    .line 110
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/FabHandler;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 114
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 101
    check-cast p2, Lru/rocketbank/r2d2/data/binding/FabHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/FabHandler;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
