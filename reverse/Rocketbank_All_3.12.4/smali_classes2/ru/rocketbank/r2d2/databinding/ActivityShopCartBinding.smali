.class public Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityShopCartBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final checkoutButton:Lru/rocketbank/core/widgets/RocketButton;

.field private mData:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView3:Landroid/widget/FrameLayout;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x5

    .line 42
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 362
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    .line 43
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 44
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->checkoutButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 45
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->checkoutButton:Lru/rocketbank/core/widgets/RocketButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 47
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 48
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView3:Landroid/widget/FrameLayout;

    .line 49
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView3:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 50
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 51
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 52
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 53
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 56
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 57
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->setRootTag(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;
    .locals 1

    .line 382
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;
    .locals 2

    const-string v0, "layout/activity_shop_cart_0"

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
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

    .line 389
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;
    .locals 1

    .line 374
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;
    .locals 3

    const v0, 0x7f0c005a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;
    .locals 1

    .line 366
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;
    .locals 1

    const v0, 0x7f0c005a

    .line 370
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    return-object p0
.end method

.method private onChangeDataEnableCheckoutButton(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    .line 161
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

.method private onChangeDataHasItems(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

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

.method private onChangeDataHasLoadingError(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

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

.method private onChangeDataInProgress(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

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

.method private onChangeDataIsEmpty(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 27

    move-object/from16 v1, p0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 172
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mData:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    const-wide/16 v7, 0x7f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v10, 0x68

    const/4 v12, 0x1

    const-wide/16 v13, 0x62

    const-wide/32 v15, 0x20000

    const-wide/16 v17, 0x65

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_13

    and-long v21, v2, v13

    cmp-long v7, v21, v4

    if-eqz v7, :cond_5

    if-eqz v6, :cond_0

    .line 199
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->getInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v20

    .line 201
    :goto_0
    invoke-virtual {v1, v12, v7}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 206
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    cmp-long v9, v21, v4

    if-eqz v9, :cond_3

    if-eqz v7, :cond_2

    const-wide/16 v21, 0x100

    or-long v23, v2, v21

    :goto_2
    move-wide/from16 v2, v23

    goto :goto_3

    :cond_2
    const-wide/16 v21, 0x80

    or-long v23, v2, v21

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v7, v19

    goto :goto_5

    :cond_5
    :goto_4
    move v7, v8

    :goto_5
    and-long v21, v2, v17

    cmp-long v9, v21, v4

    if-eqz v9, :cond_9

    if-eqz v6, :cond_6

    .line 225
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->isEmpty()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, v20

    :goto_6
    const/4 v12, 0x2

    .line 227
    invoke-virtual {v1, v12, v9}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_7

    .line 232
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_7

    :cond_7
    move v9, v8

    :goto_7
    cmp-long v12, v21, v4

    if-eqz v12, :cond_a

    if-eqz v9, :cond_8

    const-wide/16 v21, 0x400

    or-long v23, v2, v21

    const-wide/32 v2, 0x40000

    or-long v21, v23, v2

    move-wide/from16 v2, v21

    goto :goto_8

    :cond_8
    const-wide/16 v21, 0x200

    or-long v23, v2, v21

    or-long v2, v23, v15

    goto :goto_8

    :cond_9
    move v9, v8

    :cond_a
    :goto_8
    and-long v21, v2, v10

    cmp-long v12, v21, v4

    if-eqz v12, :cond_10

    if-eqz v6, :cond_b

    .line 249
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->getHasItems()Landroid/databinding/ObservableBoolean;

    move-result-object v12

    goto :goto_9

    :cond_b
    move-object/from16 v12, v20

    :goto_9
    const/4 v10, 0x3

    .line 251
    invoke-virtual {v1, v10, v12}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_c

    .line 256
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_a

    :cond_c
    move v10, v8

    :goto_a
    cmp-long v11, v21, v4

    if-eqz v11, :cond_e

    if-eqz v10, :cond_d

    const-wide/16 v11, 0x1000

    or-long v21, v2, v11

    goto :goto_b

    :cond_d
    const-wide/16 v11, 0x800

    or-long v21, v2, v11

    goto :goto_b

    :cond_e
    move-wide/from16 v21, v2

    :goto_b
    if-eqz v10, :cond_f

    move v2, v8

    goto :goto_c

    :cond_f
    move/from16 v2, v19

    :goto_c
    move v10, v2

    move-wide/from16 v2, v21

    goto :goto_d

    :cond_10
    move v10, v8

    :goto_d
    const-wide/16 v11, 0x70

    and-long v21, v2, v11

    cmp-long v11, v21, v4

    if-eqz v11, :cond_12

    if-eqz v6, :cond_11

    .line 275
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->getEnableCheckoutButton()Landroid/databinding/ObservableBoolean;

    move-result-object v11

    goto :goto_e

    :cond_11
    move-object/from16 v11, v20

    :goto_e
    const/4 v12, 0x4

    .line 277
    invoke-virtual {v1, v12, v11}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_12

    .line 282
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_f

    :cond_12
    move v11, v8

    goto :goto_f

    :cond_13
    move v7, v8

    move v9, v7

    move v10, v9

    move v11, v10

    :goto_f
    const-wide/32 v21, 0x20200

    and-long v23, v2, v21

    cmp-long v12, v23, v4

    if-eqz v12, :cond_1a

    if-eqz v6, :cond_14

    .line 292
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->getHasLoadingError()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_10

    :cond_14
    move-object/from16 v6, v20

    .line 294
    :goto_10
    invoke-virtual {v1, v8, v6}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_15

    .line 299
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_11

    :cond_15
    move v6, v8

    :goto_11
    and-long v21, v2, v15

    cmp-long v12, v21, v4

    if-eqz v12, :cond_17

    if-eqz v6, :cond_16

    const-wide/32 v21, 0x10000

    or-long v23, v2, v21

    :goto_12
    move-wide/from16 v2, v23

    goto :goto_13

    :cond_16
    const-wide/32 v21, 0x8000

    or-long v23, v2, v21

    goto :goto_12

    :cond_17
    :goto_13
    and-long v21, v2, v15

    cmp-long v12, v21, v4

    if-eqz v12, :cond_19

    if-eqz v6, :cond_18

    .line 313
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v12}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f11041b

    :goto_14
    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_15

    :cond_18
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v12}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f11017e

    goto :goto_14

    :goto_15
    move-object/from16 v26, v12

    move v12, v6

    move-object/from16 v6, v26

    goto :goto_17

    :cond_19
    move v12, v6

    goto :goto_16

    :cond_1a
    move v12, v8

    :goto_16
    move-object/from16 v6, v20

    :goto_17
    and-long v15, v2, v17

    cmp-long v21, v15, v4

    if-eqz v21, :cond_20

    if-eqz v9, :cond_1b

    const/16 v25, 0x1

    goto :goto_18

    :cond_1b
    move/from16 v25, v12

    :goto_18
    if-eqz v9, :cond_1c

    .line 322
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f1100a9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1c
    move-object/from16 v20, v6

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1e

    if-eqz v25, :cond_1d

    const-wide/16 v15, 0x4000

    or-long v21, v2, v15

    :goto_19
    move-wide/from16 v2, v21

    goto :goto_1a

    :cond_1d
    const-wide/16 v15, 0x2000

    or-long v21, v2, v15

    goto :goto_19

    :cond_1e
    :goto_1a
    if-eqz v25, :cond_1f

    goto :goto_1b

    :cond_1f
    move/from16 v8, v19

    :cond_20
    :goto_1b
    move-object/from16 v6, v20

    const-wide/16 v15, 0x70

    and-long v19, v2, v15

    cmp-long v9, v19, v4

    if-eqz v9, :cond_21

    .line 340
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->checkoutButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v9, v11}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    :cond_21
    and-long v11, v2, v17

    cmp-long v9, v11, v4

    if-eqz v9, :cond_22

    .line 345
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView3:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 346
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    and-long v8, v2, v13

    cmp-long v6, v8, v4

    if-eqz v6, :cond_23

    .line 351
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_23
    const-wide/16 v6, 0x68

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_24

    .line 356
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_24
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 173
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mData:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 74
    monitor-exit p0

    return v0

    .line 76
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

    .line 64
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 65
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 66
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

    .line 117
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->onChangeDataEnableCheckoutButton(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 115
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->onChangeDataHasItems(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 113
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->onChangeDataIsEmpty(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 111
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->onChangeDataInProgress(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->onChangeDataHasLoadingError(Landroid/databinding/ObservableBoolean;I)Z

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

.method public setData(Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mData:Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 84
    check-cast p2, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;->setData(Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
