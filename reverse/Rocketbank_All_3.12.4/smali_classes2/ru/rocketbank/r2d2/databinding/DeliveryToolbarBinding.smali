.class public Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;
.super Landroid/databinding/ViewDataBinding;
.source "DeliveryToolbarBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final deliveryAppbar:Landroid/support/design/widget/AppBarLayout;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

.field public final next:Lru/rocketbank/core/widgets/RocketButton;

.field public final registrationProgressView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x6

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v0, -0x1

    .line 385
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 42
    sget-object v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->deliveryAppbar:Landroid/support/design/widget/AppBarLayout;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->deliveryAppbar:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->registrationProgressView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->registrationProgressView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 52
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;
    .locals 1

    .line 405
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;
    .locals 2

    const-string v0, "layout/delivery_toolbar_0"

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
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

    .line 412
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;
    .locals 1

    .line 397
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;
    .locals 3

    const v0, 0x7f0c008c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 401
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;
    .locals 1

    .line 389
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;
    .locals 1

    const v0, 0x7f0c008c

    .line 393
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    return-object p0
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

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 146
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

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 182
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

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 173
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

.method private onChangeToolbarBindingIsUserLead(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 164
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

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 155
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

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 137
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
    .locals 27

    move-object/from16 v1, p0

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 193
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    .line 202
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    const-wide/16 v8, 0x17f

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/16 v11, 0x150

    const-wide/16 v13, 0x148

    const-wide/16 v15, 0x144

    const-wide/16 v17, 0x142

    const-wide/16 v19, 0x141

    const/4 v9, 0x0

    if-eqz v8, :cond_14

    and-long v21, v2, v19

    cmp-long v8, v21, v4

    const/16 v23, 0x8

    if-eqz v8, :cond_5

    if-eqz v6, :cond_0

    .line 220
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getToolbarVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 222
    :goto_0
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 227
    invoke-virtual {v8}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    cmp-long v24, v21, v4

    if-eqz v24, :cond_3

    if-eqz v8, :cond_2

    const-wide/16 v21, 0x400

    or-long v24, v2, v21

    :goto_2
    move-wide/from16 v2, v24

    goto :goto_3

    :cond_2
    const-wide/16 v21, 0x200

    or-long v24, v2, v21

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v8, v23

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v9

    :goto_5
    and-long v21, v2, v17

    cmp-long v24, v21, v4

    if-eqz v24, :cond_7

    if-eqz v6, :cond_6

    .line 246
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getButton()Landroid/databinding/ObservableField;

    move-result-object v21

    move-object/from16 v9, v21

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    const/4 v10, 0x1

    .line 248
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_7

    .line 253
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v10, v9

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    and-long v21, v2, v15

    cmp-long v9, v21, v4

    if-eqz v9, :cond_9

    if-eqz v6, :cond_8

    .line 260
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    :goto_8
    const/4 v15, 0x2

    .line 262
    invoke-virtual {v1, v15, v9}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_9

    .line 267
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_9
    and-long v15, v2, v13

    cmp-long v21, v15, v4

    if-eqz v21, :cond_f

    if-eqz v6, :cond_a

    .line 274
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->isUserLead()Landroid/databinding/ObservableBoolean;

    move-result-object v21

    move-object/from16 v13, v21

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    :goto_a
    const/4 v14, 0x3

    .line 276
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_b

    .line 281
    invoke-virtual {v13}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v13

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    :goto_b
    cmp-long v14, v15, v4

    if-eqz v14, :cond_d

    if-eqz v13, :cond_c

    const-wide/16 v14, 0x1000

    or-long v21, v2, v14

    goto :goto_c

    :cond_c
    const-wide/16 v14, 0x800

    or-long v21, v2, v14

    goto :goto_c

    :cond_d
    move-wide/from16 v21, v2

    :goto_c
    if-eqz v13, :cond_e

    const/16 v23, 0x0

    :cond_e
    move-wide/from16 v2, v21

    goto :goto_d

    :cond_f
    const/16 v23, 0x0

    :goto_d
    and-long v13, v2, v11

    cmp-long v15, v13, v4

    if-eqz v15, :cond_11

    if-eqz v6, :cond_10

    .line 300
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getButtonVisibility()Landroid/databinding/ObservableInt;

    move-result-object v13

    goto :goto_e

    :cond_10
    const/4 v13, 0x0

    :goto_e
    const/4 v14, 0x4

    .line 302
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_11

    .line 307
    invoke-virtual {v13}, Landroid/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_f

    :cond_11
    const/4 v13, 0x0

    :goto_f
    const-wide/16 v14, 0x160

    and-long v21, v2, v14

    cmp-long v14, v21, v4

    if-eqz v14, :cond_13

    if-eqz v6, :cond_12

    .line 314
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_10

    :cond_12
    const/4 v6, 0x0

    :goto_10
    const/4 v14, 0x5

    .line 316
    invoke-virtual {v1, v14, v6}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_13

    .line 321
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    move/from16 v14, v23

    goto :goto_11

    :cond_13
    move/from16 v14, v23

    const/4 v6, 0x0

    goto :goto_11

    :cond_14
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_11
    const-wide/16 v15, 0x180

    and-long v21, v2, v15

    cmp-long v15, v21, v4

    if-eqz v15, :cond_16

    if-eqz v7, :cond_16

    .line 331
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;

    if-nez v15, :cond_15

    new-instance v15, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;

    invoke-direct {v15}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;-><init>()V

    iput-object v15, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;

    goto :goto_12

    :cond_15
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mHandlerNextPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;

    :goto_12
    invoke-virtual {v15, v7}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding$OnClickListenerImpl;

    move-result-object v7

    goto :goto_13

    :cond_16
    const/4 v7, 0x0

    :goto_13
    and-long v15, v2, v19

    cmp-long v19, v15, v4

    if-eqz v19, :cond_17

    .line 338
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->deliveryAppbar:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v15, v8}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    :cond_17
    const-wide/16 v15, 0x144

    and-long v19, v2, v15

    cmp-long v8, v19, v4

    if-eqz v8, :cond_18

    .line 343
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_18
    const-wide/16 v8, 0x160

    and-long v15, v2, v8

    cmp-long v8, v15, v4

    if-eqz v8, :cond_19

    .line 348
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v8, v6}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_19
    cmp-long v6, v21, v4

    if-eqz v6, :cond_1a

    .line 353
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v7}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a
    and-long v6, v2, v17

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1b

    .line 358
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-static {v6, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1b
    and-long v6, v2, v11

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1c

    .line 363
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v6, v13}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    :cond_1c
    const-wide/16 v6, 0x148

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_1d

    .line 368
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->registrationProgressView:Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;

    invoke-virtual {v2, v14}, Lru/rocketbank/r2d2/registration/fragment/ProgressRegistrationView;->setVisibility(I)V

    :cond_1d
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 194
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
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

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 60
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
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

    .line 129
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->onChangeToolbarBindingButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 127
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->onChangeToolbarBindingButtonVisibility(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 125
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->onChangeToolbarBindingIsUserLead(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 123
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->onChangeToolbarBindingTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->onChangeToolbarBindingButton(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->onChangeToolbarBindingToolbarVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 103
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 107
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;)V
    .locals 6

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 95
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 94
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

    .line 79
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryToolbarData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    .line 82
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
