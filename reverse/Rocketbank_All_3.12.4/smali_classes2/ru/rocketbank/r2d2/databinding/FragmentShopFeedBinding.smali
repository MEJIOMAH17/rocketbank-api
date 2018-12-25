.class public Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentShopFeedBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cartButton:Landroid/widget/ImageButton;

.field private mData:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView4:Landroid/widget/FrameLayout;

.field private final mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

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
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x6

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 418
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 45
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->cartButton:Landroid/widget/ImageButton;

    .line 47
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->cartButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 48
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 49
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 50
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 51
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 52
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView4:Landroid/widget/FrameLayout;

    .line 53
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView4:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 54
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    .line 55
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 56
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 57
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 58
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 60
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 61
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->setRootTag(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;
    .locals 1

    .line 438
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;
    .locals 2

    const-string v0, "layout/fragment_shop_feed_0"

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
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

    .line 445
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;
    .locals 1

    .line 430
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;
    .locals 3

    const v0, 0x7f0c00fa

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 434
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;
    .locals 1

    .line 422
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;
    .locals 1

    const v0, 0x7f0c00fa

    .line 426
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    return-object p0
.end method

.method private onChangeDataCartButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 158
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

.method private onChangeDataCartSize(Landroid/databinding/ObservableField;I)Z
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

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 140
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

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 176
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

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 131
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

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 149
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

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 167
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
    .locals 28

    move-object/from16 v1, p0

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 187
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 188
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mData:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    const-wide/16 v7, 0xff

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0xc4

    const/4 v14, 0x1

    const-wide/16 v15, 0xc2

    const-wide/32 v17, 0x400000

    const-wide/16 v19, 0xd1

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_1a

    and-long v23, v2, v15

    cmp-long v7, v23, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 218
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getCartSize()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v22

    .line 220
    :goto_0
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 225
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v7, v22

    :goto_1
    and-long v23, v2, v12

    cmp-long v9, v23, v4

    if-eqz v9, :cond_7

    if-eqz v6, :cond_2

    .line 232
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object/from16 v9, v22

    :goto_2
    const/4 v14, 0x2

    .line 234
    invoke-virtual {v1, v14, v9}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_3

    .line 239
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_3

    :cond_3
    move v9, v8

    :goto_3
    cmp-long v14, v23, v4

    if-eqz v14, :cond_5

    if-eqz v9, :cond_4

    const-wide/16 v23, 0x200

    or-long v25, v2, v23

    :goto_4
    move-wide/from16 v2, v25

    goto :goto_5

    :cond_4
    const-wide/16 v23, 0x100

    or-long v25, v2, v23

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v9, v21

    goto :goto_7

    :cond_7
    :goto_6
    move v9, v8

    :goto_7
    and-long v23, v2, v10

    cmp-long v14, v23, v4

    if-eqz v14, :cond_e

    if-eqz v6, :cond_8

    .line 258
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getCartButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v14

    goto :goto_8

    :cond_8
    move-object/from16 v14, v22

    :goto_8
    const/4 v12, 0x3

    .line 260
    invoke-virtual {v1, v12, v14}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_9

    .line 265
    invoke-virtual {v14}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v12

    goto :goto_9

    :cond_9
    move v12, v8

    :goto_9
    cmp-long v13, v23, v4

    if-eqz v13, :cond_b

    if-eqz v12, :cond_a

    const-wide/16 v13, 0x800

    or-long v23, v2, v13

    const-wide/32 v2, 0x200000

    or-long v13, v23, v2

    :goto_a
    move-wide v2, v13

    goto :goto_b

    :cond_a
    const-wide/16 v13, 0x400

    or-long v23, v2, v13

    const-wide/32 v2, 0x100000

    or-long v13, v23, v2

    goto :goto_a

    :cond_b
    :goto_b
    if-eqz v12, :cond_c

    move v13, v8

    goto :goto_c

    :cond_c
    move/from16 v13, v21

    :goto_c
    if-eqz v12, :cond_d

    const/16 v14, 0xff

    goto :goto_d

    :cond_d
    const/16 v14, 0x80

    goto :goto_d

    :cond_e
    move v12, v8

    move v13, v12

    move v14, v13

    :goto_d
    and-long v23, v2, v19

    cmp-long v25, v23, v4

    if-eqz v25, :cond_12

    if-eqz v6, :cond_f

    .line 288
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->isEmpty()Landroid/databinding/ObservableBoolean;

    move-result-object v25

    move-object/from16 v15, v25

    goto :goto_e

    :cond_f
    move-object/from16 v15, v22

    :goto_e
    const/4 v10, 0x4

    .line 290
    invoke-virtual {v1, v10, v15}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_10

    .line 295
    invoke-virtual {v15}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_f

    :cond_10
    move v10, v8

    :goto_f
    cmp-long v11, v23, v4

    if-eqz v11, :cond_13

    if-eqz v10, :cond_11

    const-wide/32 v15, 0x8000

    or-long v23, v2, v15

    const-wide/32 v2, 0x800000

    or-long v15, v23, v2

    move-wide v2, v15

    goto :goto_10

    :cond_11
    const-wide/16 v15, 0x4000

    or-long v23, v2, v15

    or-long v2, v23, v17

    goto :goto_10

    :cond_12
    move v10, v8

    :cond_13
    :goto_10
    const-wide/16 v15, 0xe0

    and-long v23, v2, v15

    cmp-long v11, v23, v4

    if-eqz v11, :cond_19

    if-eqz v6, :cond_14

    .line 312
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getHasItems()Landroid/databinding/ObservableBoolean;

    move-result-object v11

    goto :goto_11

    :cond_14
    move-object/from16 v11, v22

    :goto_11
    const/4 v15, 0x5

    .line 314
    invoke-virtual {v1, v15, v11}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_15

    .line 319
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_12

    :cond_15
    move v11, v8

    :goto_12
    cmp-long v15, v23, v4

    if-eqz v15, :cond_17

    if-eqz v11, :cond_16

    const-wide/32 v15, 0x20000

    or-long v23, v2, v15

    :goto_13
    move-wide/from16 v2, v23

    goto :goto_14

    :cond_16
    const-wide/32 v15, 0x10000

    or-long v23, v2, v15

    goto :goto_13

    :cond_17
    :goto_14
    if-eqz v11, :cond_18

    goto :goto_15

    :cond_18
    move/from16 v11, v21

    goto :goto_16

    :cond_19
    :goto_15
    move v11, v8

    goto :goto_16

    :cond_1a
    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move-object/from16 v7, v22

    :goto_16
    const-wide/32 v15, 0x404000

    and-long v23, v2, v15

    cmp-long v15, v23, v4

    if-eqz v15, :cond_21

    if-eqz v6, :cond_1b

    .line 341
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->getHasLoadingError()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_17

    :cond_1b
    move-object/from16 v6, v22

    .line 343
    :goto_17
    invoke-virtual {v1, v8, v6}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_1c

    .line 348
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_18

    :cond_1c
    move v6, v8

    :goto_18
    and-long v15, v2, v17

    cmp-long v23, v15, v4

    if-eqz v23, :cond_1e

    if-eqz v6, :cond_1d

    const-wide/16 v15, 0x2000

    or-long v23, v2, v15

    :goto_19
    move-wide/from16 v2, v23

    goto :goto_1a

    :cond_1d
    const-wide/16 v15, 0x1000

    or-long v23, v2, v15

    goto :goto_19

    :cond_1e
    :goto_1a
    and-long v15, v2, v17

    cmp-long v17, v15, v4

    if-eqz v17, :cond_20

    if-eqz v6, :cond_1f

    .line 362
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v15}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v8, 0x7f11041b

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1b

    :cond_1f
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f11017e

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1b

    :cond_20
    move-object/from16 v8, v22

    goto :goto_1b

    :cond_21
    move-object/from16 v8, v22

    const/4 v6, 0x0

    :goto_1b
    and-long v15, v2, v19

    cmp-long v17, v15, v4

    if-eqz v17, :cond_27

    if-eqz v10, :cond_22

    const/4 v6, 0x1

    :cond_22
    if-eqz v10, :cond_23

    .line 371
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f11041a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_23
    move-object/from16 v22, v8

    cmp-long v8, v15, v4

    if-eqz v8, :cond_25

    if-eqz v6, :cond_24

    const-wide/32 v15, 0x80000

    or-long v17, v2, v15

    :goto_1c
    move-wide/from16 v2, v17

    goto :goto_1d

    :cond_24
    const-wide/32 v15, 0x40000

    or-long v17, v2, v15

    goto :goto_1c

    :cond_25
    :goto_1d
    if-eqz v6, :cond_26

    const/4 v8, 0x0

    goto :goto_1e

    :cond_26
    move/from16 v8, v21

    :goto_1e
    move-object/from16 v6, v22

    goto :goto_1f

    :cond_27
    move-object/from16 v6, v22

    const/4 v8, 0x0

    :goto_1f
    const-wide/16 v15, 0xc8

    and-long v17, v2, v15

    cmp-long v10, v17, v4

    if-eqz v10, :cond_28

    .line 389
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->cartButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v14}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 390
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->cartButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 391
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v10, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_28
    const-wide/16 v12, 0xc2

    and-long v14, v2, v12

    cmp-long v10, v14, v4

    if-eqz v10, :cond_29

    .line 396
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v10, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_29
    and-long v12, v2, v19

    cmp-long v7, v12, v4

    if-eqz v7, :cond_2a

    .line 401
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView4:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 402
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    const-wide/16 v6, 0xc4

    and-long v12, v2, v6

    cmp-long v6, v12, v4

    if-eqz v6, :cond_2b

    .line 407
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2b
    const-wide/16 v6, 0xe0

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_2c

    .line 412
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_2c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 188
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;
    .locals 1

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mData:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 78
    monitor-exit p0

    return v0

    .line 80
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

    .line 68
    monitor-enter p0

    const-wide/16 v0, 0x80

    .line 69
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
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

    .line 123
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->onChangeDataHasItems(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->onChangeDataIsEmpty(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->onChangeDataCartButtonEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 117
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->onChangeDataInProgress(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 115
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->onChangeDataCartSize(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 113
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->onChangeDataHasLoadingError(Landroid/databinding/ObservableBoolean;I)Z

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

.method public setData(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;)V
    .locals 6

    .line 97
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mData:Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 101
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 100
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

    .line 88
    check-cast p2, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;->setData(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
