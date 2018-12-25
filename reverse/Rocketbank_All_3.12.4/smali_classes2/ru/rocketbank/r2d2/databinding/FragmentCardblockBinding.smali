.class public Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentCardblockBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final frameLayout:Landroid/widget/FrameLayout;

.field public final includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

.field public final widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "include_toolbar"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    aput v1, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c010d

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090190

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09041f

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09041b

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 121
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mDirtyFlags:J

    .line 43
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 44
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->frameLayout:Landroid/widget/FrameLayout;

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->widgetCardBlock:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    const/4 v0, 0x3

    .line 50
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->widgetCardUnblock:Lru/rocketbank/r2d2/widgets/cardblock/CardUnblockWidget;

    .line 51
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->setRootTag(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;
    .locals 1

    .line 141
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;
    .locals 2

    const-string v0, "layout/fragment_cardblock_0"

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
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

    .line 148
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;
    .locals 1

    .line 133
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;
    .locals 3

    const v0, 0x7f0c00c9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;
    .locals 1

    .line 125
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;
    .locals 1

    const v0, 0x7f0c00c9

    .line 129
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    return-object p0
.end method

.method private onChangeIncludeToolbar(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mDirtyFlags:J

    .line 102
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
    .locals 2

    .line 111
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 113
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 69
    monitor-exit p0

    return v0

    .line 71
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 71
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 59
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->invalidateAll()V

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
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

    .line 94
    :cond_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->onChangeIncludeToolbar(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z

    move-result p1

    return p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
