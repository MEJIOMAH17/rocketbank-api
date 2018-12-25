.class public Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentProfileBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final appBar:Landroid/widget/FrameLayout;

.field public final cardOverlay:Landroid/view/View;

.field public final coverImage:Landroid/widget/ImageView;

.field public final feed:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final headerOverlay:Landroid/view/View;

.field private mData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

.field private mHandlerOnAvatarChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;

.field private mHandlerOnCoverChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarReal:Landroid/support/v7/widget/Toolbar;

.field public final userName:Lru/rocketbank/core/widgets/RocketTextView;

.field public final userPic:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901b5

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09036b

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090172

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ca

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x6

    .line 59
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 409
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 60
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xc

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 61
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->appBar:Landroid/widget/FrameLayout;

    .line 62
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->appBar:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 63
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->cardOverlay:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->cardOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 65
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->coverImage:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->coverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 67
    aget-object v0, p1, v0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->feed:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/16 v0, 0x8

    .line 68
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->headerOverlay:Landroid/view/View;

    const/4 v0, 0x0

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 71
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x9

    .line 72
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x5

    .line 73
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 75
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 77
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->userName:Lru/rocketbank/core/widgets/RocketTextView;

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->userName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 79
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->userPic:Landroid/widget/ImageView;

    .line 80
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->userPic:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->setRootTag(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;
    .locals 1

    .line 429
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;
    .locals 2

    const-string v0, "layout/fragment_profile_0"

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
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

    .line 436
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;
    .locals 1

    .line 421
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;
    .locals 3

    const v0, 0x7f0c00f1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 425
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;
    .locals 1

    .line 413
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;
    .locals 1

    const v0, 0x7f0c00f1

    .line 417
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    return-object p0
.end method

.method private onChangeDataOverlayTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 202
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

.method private onChangeDataParallaxTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 193
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

.method private onChangeDataToolbarBackDrawable(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 184
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

.method private onChangeDataToolbarTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 166
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

.method private onChangeDataToolbarWhiteBackDrawable(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 211
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

.method private onChangeDataUserName(Landroid/databinding/ObservableField;I)Z
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

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 175
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
    .locals 35

    move-object/from16 v1, p0

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 222
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    .line 234
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    const-wide/16 v8, 0x140

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 247
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandlerOnCoverChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;

    if-nez v8, :cond_0

    new-instance v8, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;

    invoke-direct {v8}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandlerOnCoverChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandlerOnCoverChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v8, v6}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl;

    move-result-object v8

    .line 249
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandlerOnAvatarChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;

    if-nez v12, :cond_1

    new-instance v12, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandlerOnAvatarChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandlerOnAvatarChangeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v12, v6}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;)Lru/rocketbank/r2d2/databinding/FragmentProfileBinding$OnClickListenerImpl1;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    const-wide/16 v12, 0x1bf

    and-long v14, v2, v12

    cmp-long v12, v14, v4

    const-wide/16 v15, 0x190

    const-wide/16 v17, 0x188

    const-wide/16 v19, 0x184

    const-wide/16 v21, 0x182

    const-wide/16 v23, 0x181

    const/4 v9, 0x0

    if-eqz v12, :cond_f

    and-long v26, v2, v23

    cmp-long v12, v26, v4

    if-eqz v12, :cond_4

    if-eqz v7, :cond_3

    .line 259
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getToolbarTranslation()Landroid/databinding/ObservableInt;

    move-result-object v12

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 261
    :goto_3
    invoke-virtual {v1, v9, v12}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_4

    .line 266
    invoke-virtual {v12}, Landroid/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_4

    :cond_4
    move v12, v9

    :goto_4
    and-long v26, v2, v21

    cmp-long v28, v26, v4

    if-eqz v28, :cond_6

    if-eqz v7, :cond_5

    .line 273
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getUserName()Landroid/databinding/ObservableField;

    move-result-object v26

    move-object/from16 v9, v26

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    const/4 v13, 0x1

    .line 275
    invoke-virtual {v1, v13, v9}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_6

    .line 280
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    and-long v13, v2, v19

    cmp-long v26, v13, v4

    if-eqz v26, :cond_8

    if-eqz v7, :cond_7

    .line 287
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getToolbarBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v13

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    const/4 v14, 0x2

    .line 289
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_8

    .line 294
    invoke-virtual {v13}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable;

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    :goto_8
    and-long v26, v2, v17

    cmp-long v14, v26, v4

    if-eqz v14, :cond_a

    if-eqz v7, :cond_9

    .line 301
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getParallaxTranslation()Landroid/databinding/ObservableInt;

    move-result-object v14

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    :goto_9
    const/4 v4, 0x3

    .line 303
    invoke-virtual {v1, v4, v14}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_a

    .line 308
    invoke-virtual {v14}, Landroid/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    and-long v26, v2, v15

    const-wide/16 v30, 0x0

    cmp-long v5, v26, v30

    if-eqz v5, :cond_c

    if-eqz v7, :cond_b

    .line 315
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getOverlayTranslation()Landroid/databinding/ObservableInt;

    move-result-object v5

    goto :goto_b

    :cond_b
    const/4 v5, 0x0

    :goto_b
    const/4 v14, 0x4

    .line 317
    invoke-virtual {v1, v14, v5}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_c

    .line 322
    invoke-virtual {v5}, Landroid/databinding/ObservableInt;->get()I

    move-result v5

    move/from16 v29, v5

    const-wide/16 v26, 0x1a0

    goto :goto_c

    :cond_c
    const-wide/16 v26, 0x1a0

    const/16 v29, 0x0

    :goto_c
    and-long v32, v2, v26

    const-wide/16 v26, 0x0

    cmp-long v5, v32, v26

    if-eqz v5, :cond_e

    if-eqz v7, :cond_d

    .line 329
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;->getToolbarWhiteBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v5

    goto :goto_d

    :cond_d
    const/4 v5, 0x0

    :goto_d
    const/4 v7, 0x5

    .line 331
    invoke-virtual {v1, v7, v5}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_e

    .line 336
    invoke-virtual {v5}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    move-object v7, v5

    move/from16 v5, v29

    goto :goto_e

    :cond_e
    move/from16 v5, v29

    const/4 v7, 0x0

    goto :goto_e

    :cond_f
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    and-long v25, v2, v17

    const-wide/16 v17, 0x0

    cmp-long v14, v25, v17

    const/16 v15, 0xb

    if-eqz v14, :cond_10

    .line 343
    invoke-static {}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->getBuildSdkInt()I

    move-result v14

    if-lt v14, v15, :cond_10

    .line 345
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->appBar:Landroid/widget/FrameLayout;

    int-to-float v4, v4

    invoke-virtual {v14, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_10
    const-wide/16 v16, 0x190

    and-long v25, v2, v16

    const-wide/16 v16, 0x0

    cmp-long v4, v25, v16

    if-eqz v4, :cond_11

    .line 350
    invoke-static {}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->getBuildSdkInt()I

    move-result v4

    if-lt v4, v15, :cond_11

    .line 352
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->cardOverlay:Landroid/view/View;

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_11
    cmp-long v4, v10, v16

    if-eqz v4, :cond_12

    .line 358
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->coverImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->userPic:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    const-wide/16 v4, 0x1a0

    and-long v10, v2, v4

    cmp-long v4, v10, v16

    if-eqz v4, :cond_13

    .line 364
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    and-long v4, v2, v23

    cmp-long v6, v4, v16

    if-eqz v6, :cond_14

    .line 368
    invoke-static {}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->getBuildSdkInt()I

    move-result v4

    if-lt v4, v15, :cond_14

    .line 370
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    int-to-float v5, v12

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    :cond_14
    and-long v4, v2, v19

    cmp-long v6, v4, v16

    if-eqz v6, :cond_15

    .line 376
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v13}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    and-long v4, v2, v21

    cmp-long v2, v4, v16

    if-eqz v2, :cond_16

    .line 381
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->userName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 223
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/profile/ProfileData;
    .locals 1

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;
    .locals 1

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 98
    monitor-exit p0

    return v0

    .line 100
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

    .line 88
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 89
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 90
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

    .line 158
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->onChangeDataToolbarWhiteBackDrawable(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 156
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->onChangeDataOverlayTranslation(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 154
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->onChangeDataParallaxTranslation(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 152
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->onChangeDataToolbarBackDrawable(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->onChangeDataUserName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 148
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->onChangeDataToolbarTranslation(Landroid/databinding/ObservableInt;I)Z

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

.method public setData(Lru/rocketbank/r2d2/data/binding/profile/ProfileData;)V
    .locals 6

    .line 132
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mData:Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 136
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->notifyPropertyChanged(I)V

    .line 137
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;)V
    .locals 6

    .line 120
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 124
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->notifyPropertyChanged(I)V

    .line 125
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 108
    check-cast p2, Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/profile/ProfileHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 111
    check-cast p2, Lru/rocketbank/r2d2/data/binding/profile/ProfileData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;->setData(Lru/rocketbank/r2d2/data/binding/profile/ProfileData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
