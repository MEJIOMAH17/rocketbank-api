.class public Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityRocketRubleInfoBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final closeButton:Landroid/support/v7/widget/CardView;

.field public final fullscreenContent:Landroid/widget/FrameLayout;

.field private mDirtyFlags:J

.field private final mboundView0:Lio/codetail/widget/RevealFrameLayout;

.field private final mboundView1:Landroid/support/constraint/ConstraintLayout;

.field private final mboundView11:Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

.field public final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "info_onetwotrip"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x2

    aput v5, v3, v4

    new-array v5, v1, [I

    const v6, 0x7f0c010f

    aput v6, v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090197

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ba

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900e0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 114
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mDirtyFlags:J

    .line 45
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x5

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->closeButton:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x3

    .line 47
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->fullscreenContent:Landroid/widget/FrameLayout;

    .line 48
    aget-object v0, p1, v0

    check-cast v0, Lio/codetail/widget/RevealFrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView0:Lio/codetail/widget/RevealFrameLayout;

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView0:Lio/codetail/widget/RevealFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/codetail/widget/RevealFrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView1:Landroid/support/constraint/ConstraintLayout;

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView1:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 52
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x4

    .line 54
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 55
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->setRootTag(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;
    .locals 1

    .line 134
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;
    .locals 2

    const-string v0, "layout/activity_rocket_ruble_info_0"

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
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

    .line 141
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;
    .locals 1

    .line 126
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;
    .locals 3

    const v0, 0x7f0c0057

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;
    .locals 1

    .line 118
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;
    .locals 1

    const v0, 0x7f0c0057

    .line 122
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 104
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 106
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 107
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 73
    monitor-exit p0

    return v0

    .line 75
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 75
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 62
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 63
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mDirtyFlags:J

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->invalidateAll()V

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 64
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

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
