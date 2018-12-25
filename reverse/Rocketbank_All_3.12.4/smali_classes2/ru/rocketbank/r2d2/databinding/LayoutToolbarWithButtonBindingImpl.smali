.class public Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;
.super Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
.source "LayoutToolbarWithButtonBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v4, 0x5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/support/design/widget/AppBarLayout;Lru/rocketbank/core/widgets/RocketButton;Landroid/support/v7/widget/Toolbar;)V

    const-wide/16 v0, -0x1

    .line 321
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mainAppbar:Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 39
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->invalidateAll()V

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

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 125
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

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 152
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

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 143
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

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 134
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

.method private onChangeToolbarBindingToolbarVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 116
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
    .locals 24

    move-object/from16 v1, p0

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 163
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 171
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    const-wide/16 v8, 0xbf

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/16 v11, 0xa8

    const-wide/16 v13, 0xa4

    const-wide/16 v15, 0xa2

    const-wide/16 v17, 0xa1

    const/4 v9, 0x0

    if-eqz v8, :cond_e

    and-long v19, v2, v17

    cmp-long v8, v19, v4

    if-eqz v8, :cond_5

    if-eqz v6, :cond_0

    .line 187
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getToolbarVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 189
    :goto_0
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 194
    invoke-virtual {v8}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    cmp-long v21, v19, v4

    if-eqz v21, :cond_3

    if-eqz v8, :cond_2

    const-wide/16 v19, 0x200

    or-long v21, v2, v19

    :goto_2
    move-wide/from16 v2, v21

    goto :goto_3

    :cond_2
    const-wide/16 v19, 0x100

    or-long v21, v2, v19

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const/16 v8, 0x8

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v9

    :goto_5
    and-long v19, v2, v15

    cmp-long v21, v19, v4

    if-eqz v21, :cond_7

    if-eqz v6, :cond_6

    .line 213
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButton()Landroid/databinding/ObservableField;

    move-result-object v19

    move-object/from16 v9, v19

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    const/4 v10, 0x1

    .line 215
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_7

    .line 220
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v10, v9

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    and-long v19, v2, v13

    cmp-long v9, v19, v4

    if-eqz v9, :cond_9

    if-eqz v6, :cond_8

    .line 227
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    :goto_8
    const/4 v15, 0x2

    .line 229
    invoke-virtual {v1, v15, v9}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_9

    .line 234
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_9
    and-long v15, v2, v11

    cmp-long v19, v15, v4

    if-eqz v19, :cond_b

    if-eqz v6, :cond_a

    .line 241
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonVisibility()Landroid/databinding/ObservableInt;

    move-result-object v15

    goto :goto_a

    :cond_a
    const/4 v15, 0x0

    :goto_a
    const/4 v11, 0x3

    .line 243
    invoke-virtual {v1, v11, v15}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_b

    .line 248
    invoke-virtual {v15}, Landroid/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    :goto_b
    const-wide/16 v15, 0xb0

    and-long v19, v2, v15

    cmp-long v12, v19, v4

    if-eqz v12, :cond_d

    if-eqz v6, :cond_c

    .line 255
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_c

    :cond_c
    const/4 v6, 0x0

    :goto_c
    const/4 v12, 0x4

    .line 257
    invoke-virtual {v1, v12, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_d

    .line 262
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    goto :goto_d

    :cond_e
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d
    const-wide/16 v15, 0xc0

    and-long v19, v2, v15

    cmp-long v12, v19, v4

    if-eqz v12, :cond_10

    if-eqz v7, :cond_10

    .line 272
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;

    if-nez v12, :cond_f

    new-instance v12, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;

    goto :goto_e

    :cond_f
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;

    :goto_e
    invoke-virtual {v12, v7}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl$OnClickListenerImpl;

    move-result-object v7

    goto :goto_f

    :cond_10
    const/4 v7, 0x0

    :goto_f
    and-long v15, v2, v17

    cmp-long v12, v15, v4

    if-eqz v12, :cond_11

    .line 279
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mainAppbar:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v12, v8}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    :cond_11
    and-long v15, v2, v13

    cmp-long v8, v15, v4

    if-eqz v8, :cond_12

    .line 284
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    const-wide/16 v8, 0xb0

    and-long v12, v2, v8

    cmp-long v8, v12, v4

    if-eqz v8, :cond_13

    .line 289
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v8, v6}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_13
    cmp-long v6, v19, v4

    if-eqz v6, :cond_14

    .line 294
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v7}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const-wide/16 v6, 0xa2

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_15

    .line 299
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-static {v6, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15
    const-wide/16 v6, 0xa8

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_16

    .line 304
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v2, v11}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 164
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
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x80

    .line 49
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->requestRebind()V

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

    .line 108
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->onChangeToolbarBindingButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->onChangeToolbarBindingButtonVisibility(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->onChangeToolbarBindingTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->onChangeToolbarBindingButton(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->onChangeToolbarBindingToolbarVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 88
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 92
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->notifyPropertyChanged(I)V

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
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 84
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->notifyPropertyChanged(I)V

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

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    .line 71
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
