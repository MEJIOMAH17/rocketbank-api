.class public Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;
.super Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
.source "LayoutToolbarWithButtonBindingV21Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lru/rocketbank/core/widgets/RocketButton;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    const/4 v4, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/support/design/widget/AppBarLayout;Lru/rocketbank/core/widgets/RocketButton;Landroid/support/v7/widget/Toolbar;)V

    const-wide/16 v0, -0x1

    .line 276
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mainAppbar:Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 39
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->setRootTag(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->invalidateAll()V

    return-void
.end method

.method private onChangeToolbarBindingButton(Landroid/databinding/ObservableField;I)Z
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

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

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

.method private onChangeToolbarBindingButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 141
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

.method private onChangeToolbarBindingButtonVisibility(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 132
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

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 123
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
    .locals 21

    move-object/from16 v1, p0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 152
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 158
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    const-wide/16 v8, 0x5f

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/16 v11, 0x54

    const-wide/16 v13, 0x52

    const-wide/16 v15, 0x51

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    and-long v17, v2, v15

    cmp-long v8, v17, v4

    if-eqz v8, :cond_1

    if-eqz v6, :cond_0

    .line 173
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButton()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 175
    :goto_0
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 180
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    and-long v17, v2, v13

    cmp-long v19, v17, v4

    if-eqz v19, :cond_3

    if-eqz v6, :cond_2

    .line 187
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v17

    move-object/from16 v9, v17

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x1

    .line 189
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_3

    .line 194
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v10, v9

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    and-long v17, v2, v11

    cmp-long v9, v17, v4

    if-eqz v9, :cond_5

    if-eqz v6, :cond_4

    .line 201
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonVisibility()Landroid/databinding/ObservableInt;

    move-result-object v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const/4 v11, 0x2

    .line 203
    invoke-virtual {v1, v11, v9}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_5

    .line 208
    invoke-virtual {v9}, Landroid/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    const-wide/16 v11, 0x58

    and-long v17, v2, v11

    cmp-long v11, v17, v4

    if-eqz v11, :cond_7

    if-eqz v6, :cond_6

    .line 215
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    const/4 v11, 0x3

    .line 217
    invoke-virtual {v1, v11, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_7

    .line 222
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    const-wide/16 v11, 0x60

    and-long v17, v2, v11

    cmp-long v11, v17, v4

    if-eqz v11, :cond_a

    if-eqz v7, :cond_a

    .line 232
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;

    if-nez v11, :cond_9

    new-instance v11, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;

    goto :goto_8

    :cond_9
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;

    :goto_8
    invoke-virtual {v11, v7}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl$OnClickListenerImpl;

    move-result-object v7

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    and-long v11, v2, v13

    cmp-long v13, v11, v4

    if-eqz v13, :cond_b

    .line 239
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v11, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    const-wide/16 v10, 0x58

    and-long v12, v2, v10

    cmp-long v10, v12, v4

    if-eqz v10, :cond_c

    .line 244
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v10, v6}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_c
    cmp-long v6, v17, v4

    if-eqz v6, :cond_d

    .line 249
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v7}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    and-long v6, v2, v15

    cmp-long v10, v6, v4

    if-eqz v10, :cond_e

    .line 254
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-static {v6, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    const-wide/16 v6, 0x54

    and-long v10, v2, v6

    cmp-long v2, v10, v4

    if-eqz v2, :cond_f

    .line 259
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v2, v9}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 153
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 58
    monitor-exit p0

    return v0

    .line 60
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

    .line 48
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 49
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
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

    .line 106
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->onChangeToolbarBindingButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->onChangeToolbarBindingButtonVisibility(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->onChangeToolbarBindingTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->onChangeToolbarBindingButton(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 88
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 92
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 6

    .line 80
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 84
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
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

    .line 68
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    .line 71
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
