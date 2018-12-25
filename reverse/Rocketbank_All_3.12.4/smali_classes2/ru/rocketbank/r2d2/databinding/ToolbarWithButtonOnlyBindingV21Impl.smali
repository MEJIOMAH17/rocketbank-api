.class public Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;
.super Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;
.source "ToolbarWithButtonOnlyBindingV21Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lru/rocketbank/core/widgets/RocketButton;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v7, p3

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/support/design/widget/AppBarLayout;Lru/rocketbank/core/widgets/RocketButton;Landroid/support/v7/widget/Toolbar;)V

    const-wide/16 v0, -0x1

    .line 208
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mainAppbar:Landroid/support/design/widget/AppBarLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/support/design/widget/AppBarLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {p1, p3}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->setRootTag(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->invalidateAll()V

    return-void
.end method

.method private onChangeToolbarBindingIsEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    .line 115
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

.method private onChangeToolbarBindingTitle(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    .line 106
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
    .locals 19

    move-object/from16 v1, p0

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 126
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    .line 131
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    const-wide/16 v8, 0x17

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/16 v9, 0x16

    const-wide/16 v11, 0x15

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v8, :cond_3

    and-long v15, v2, v11

    cmp-long v8, v15, v4

    if-eqz v8, :cond_1

    if-eqz v6, :cond_0

    .line 143
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v14

    .line 145
    :goto_0
    invoke-virtual {v1, v13, v8}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 150
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v8, v14

    :goto_1
    and-long v15, v2, v9

    cmp-long v17, v15, v4

    if-eqz v17, :cond_4

    if-eqz v6, :cond_2

    .line 157
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->isEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v14

    :goto_2
    const/4 v15, 0x1

    .line 159
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_4

    .line 164
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v13

    goto :goto_3

    :cond_3
    move-object v8, v14

    :cond_4
    :goto_3
    const-wide/16 v15, 0x18

    and-long v17, v2, v15

    cmp-long v6, v17, v4

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 174
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;

    if-nez v6, :cond_5

    new-instance v6, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;

    invoke-direct {v6}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;-><init>()V

    iput-object v6, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;

    goto :goto_4

    :cond_5
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;

    :goto_4
    invoke-virtual {v6, v7}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl$OnClickListenerImpl;

    move-result-object v14

    :cond_6
    and-long v6, v2, v9

    cmp-long v9, v6, v4

    if-eqz v9, :cond_7

    .line 181
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v13}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_7
    cmp-long v6, v17, v4

    if-eqz v6, :cond_8

    .line 186
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v14}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    and-long v6, v2, v11

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    .line 191
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-static {v2, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 127
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 54
    monitor-exit p0

    return v0

    .line 56
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

    .line 44
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 45
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
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

    .line 98
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->onChangeToolbarBindingIsEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 96
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->onChangeToolbarBindingTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 84
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 88
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;)V
    .locals 6

    .line 76
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 80
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->notifyPropertyChanged(I)V

    .line 81
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 79
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

    .line 64
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    .line 67
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
