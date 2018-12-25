.class public Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentChangeCodewordBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final editTextCodeword:Lru/rocketbank/core/widgets/RocketEditText;

.field private mCodeword:Ljava/lang/String;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x2

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0147

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09039e

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 223
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    .line 45
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 46
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->editTextCodeword:Lru/rocketbank/core/widgets/RocketEditText;

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->editTextCodeword:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 48
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->textViewErrors:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x2

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
    .locals 1

    .line 243
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
    .locals 2

    const-string v0, "layout/fragment_change_codeword_0"

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
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

    .line 250
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
    .locals 1

    .line 235
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
    .locals 3

    const v0, 0x7f0c00cb

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
    .locals 1

    .line 227
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;
    .locals 1

    const v0, 0x7f0c00cb

    .line 231
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    return-object p0
.end method

.method private onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    .line 153
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
    .locals 14

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 164
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 167
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mCodeword:Ljava/lang/String;

    .line 168
    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x14

    and-long v10, v0, v8

    cmp-long v12, v10, v2

    if-eqz v12, :cond_5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 181
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    if-ltz v5, :cond_1

    const/4 v7, 0x1

    :cond_1
    cmp-long v5, v10, v2

    if-eqz v5, :cond_3

    if-eqz v7, :cond_2

    const-wide/16 v10, 0x40

    or-long v12, v0, v10

    :goto_1
    move-wide v0, v12

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x20

    or-long v12, v0, v10

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 198
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->editTextCodeword:Lru/rocketbank/core/widgets/RocketEditText;

    const v7, 0x7f080296

    :goto_3
    invoke-static {v5, v7}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v7, v5

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->editTextCodeword:Lru/rocketbank/core/widgets/RocketEditText;

    const v7, 0x7f080294

    goto :goto_3

    :cond_5
    :goto_4
    and-long v10, v0, v8

    cmp-long v5, v10, v2

    if-eqz v5, :cond_6

    .line 206
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->editTextCodeword:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v5, v7}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const-wide/16 v7, 0x18

    and-long v9, v0, v7

    cmp-long v5, v9, v2

    if-eqz v5, :cond_7

    .line 211
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v5, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_7
    const-wide/16 v5, 0x12

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    if-eqz v0, :cond_8

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 218
    :cond_8
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 165
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCodeword()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mCodeword:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 1

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 71
    monitor-exit p0

    return v0

    .line 73
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
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

    .line 145
    :cond_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1
.end method

.method public setCodeword(Ljava/lang/String;)V
    .locals 6

    .line 111
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mCodeword:Ljava/lang/String;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    .line 115
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->notifyPropertyChanged(I)V

    .line 116
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 123
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 127
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->notifyPropertyChanged(I)V

    .line 128
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 6

    .line 99
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 103
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->notifyPropertyChanged(I)V

    .line 104
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 102
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

    .line 84
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 87
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setCodeword(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    if-ne v0, p1, :cond_2

    .line 90
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
