.class public Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentInputPhoneNumberBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final countryCode:Lru/rocketbank/core/widgets/RocketEditText;

.field public final layoutPhoneNumber:Landroid/widget/LinearLayout;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

.field public final textViewHintBottom:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    aput v1, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0147

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903a1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090213

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09010f

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902b0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 180
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    .line 50
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 51
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->countryCode:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v1, 0x3

    .line 52
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->layoutPhoneNumber:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 53
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 54
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 55
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditTextPhone;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    const/4 v1, 0x2

    .line 56
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->textViewHintBottom:Lru/rocketbank/core/widgets/RocketTextView;

    .line 57
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 59
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->setRootTag(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
    .locals 1

    .line 200
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
    .locals 2

    const-string v0, "layout/fragment_input_phone_number_0"

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
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

    .line 207
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
    .locals 1

    .line 192
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
    .locals 3

    const v0, 0x7f0c00de

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
    .locals 1

    .line 184
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
    .locals 1

    const v0, 0x7f0c00de

    .line 188
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    return-object p0
.end method

.method private onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    .line 144
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

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 155
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    .line 156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 158
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    const-wide/16 v6, 0xc

    and-long v8, v0, v6

    cmp-long v6, v8, v2

    if-eqz v6, :cond_0

    .line 168
    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v6, v5}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_0
    const-wide/16 v5, 0xa

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 156
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 77
    monitor-exit p0

    return v0

    .line 79
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 66
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 67
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 68
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

    .line 136
    :cond_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 114
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 118
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 6

    .line 102
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 106
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne v0, p1, :cond_0

    .line 90
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    .line 93
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
