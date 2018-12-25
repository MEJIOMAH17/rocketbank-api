.class public Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "TransferTabsFragmentBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

.field public final includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "include_tab"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902a2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x7f0c0147
        0x7f0c010c
    .end array-data
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 38
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 134
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    .line 39
    sget-object v1, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 40
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x1

    .line 42
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 44
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 46
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->pager:Landroid/support/v4/view/ViewPager;

    .line 47
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;
    .locals 1

    .line 154
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;
    .locals 2

    const-string v0, "layout/transfer_tabs_fragment_0"

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
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

    .line 161
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;
    .locals 1

    .line 146
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;
    .locals 3

    const v0, 0x7f0c01bf

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;
    .locals 1

    .line 138
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;
    .locals 1

    const v0, 0x7f0c01bf

    .line 142
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    return-object p0
.end method

.method private onChangeIncludeTab(Lru/rocketbank/r2d2/databinding/IncludeTabBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    .line 114
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

.method private onChangeIncludeToolbar(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    .line 105
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

    .line 123
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 125
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 66
    monitor-exit p0

    return v0

    .line 68
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 68
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 55
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;->invalidateAll()V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 97
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->onChangeIncludeTab(Lru/rocketbank/r2d2/databinding/IncludeTabBinding;I)Z

    move-result p1

    return p1

    .line 95
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->onChangeIncludeToolbar(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
