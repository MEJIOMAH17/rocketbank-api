.class public Lru/rocketbank/r2d2/databinding/FragmentCardBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentCardBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final appBar:Landroid/widget/FrameLayout;

.field public final backgroundImage:Landroid/widget/ImageView;

.field public final cardOptions:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final cardOverlay:Landroid/view/View;

.field public final fab:Landroid/support/design/widget/FloatingActionButton;

.field public final headerOverlay:Landroid/view/View;

.field private mData:Lru/rocketbank/r2d2/data/binding/CardFragmentData;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;

.field private mHandlerOnChangeMoneyModeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

.field public final swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarLayout:Landroid/widget/FrameLayout;

.field public final toolbarReal:Landroid/support/v7/widget/Toolbar;

.field public final toolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09005a

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903df

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09006a

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903e0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902f6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901b5

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c7

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09036b

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903db

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090170

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 71
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 303
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 72
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xf

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 73
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->appBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x6

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->backgroundImage:Landroid/widget/ImageView;

    const/16 v1, 0xc

    .line 75
    aget-object v1, p1, v1

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->cardOptions:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const/16 v1, 0xa

    .line 76
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->cardOverlay:Landroid/view/View;

    const/16 v1, 0xe

    .line 77
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v1, 0x9

    .line 78
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->headerOverlay:Landroid/view/View;

    const/4 v1, 0x0

    .line 79
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 80
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 81
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 82
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    .line 83
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 85
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0xb

    .line 86
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x2

    .line 87
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 89
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->toolbarLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0xd

    .line 90
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x7

    .line 91
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->toolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 92
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->setRootTag(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;
    .locals 1

    .line 323
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;
    .locals 2

    const-string v0, "layout/fragment_card_0"

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
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

    .line 330
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;
    .locals 1

    .line 315
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;
    .locals 3

    const v0, 0x7f0c00c5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 319
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;
    .locals 1

    .line 307
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding;
    .locals 1

    const v0, 0x7f0c00c5

    .line 311
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;

    return-object p0
.end method

.method private onChangeDataMoney(Landroid/databinding/ObservableField;I)Z
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

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 180
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

.method private onChangeDataTitle(Landroid/databinding/ObservableField;I)Z
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

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 189
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

.method private onChangeDataTitleName(Landroid/databinding/ObservableField;I)Z
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

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 171
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

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 200
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;

    .line 207
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/CardFragmentData;

    const-wide/16 v8, 0x28

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 218
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mHandlerOnChangeMoneyModeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;

    if-nez v8, :cond_0

    new-instance v8, Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;

    invoke-direct {v8}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mHandlerOnChangeMoneyModeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mHandlerOnChangeMoneyModeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v8, v6}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;)Lru/rocketbank/r2d2/databinding/FragmentCardBinding$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v12, 0x37

    and-long v14, v2, v12

    cmp-long v8, v14, v4

    const-wide/16 v12, 0x34

    const-wide/16 v14, 0x32

    const-wide/16 v16, 0x31

    if-eqz v8, :cond_8

    and-long v18, v2, v16

    cmp-long v8, v18, v4

    if-eqz v8, :cond_3

    if-eqz v7, :cond_2

    .line 228
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/CardFragmentData;->getTitleName()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    .line 230
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_3

    .line 235
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v8

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    and-long v18, v2, v14

    cmp-long v8, v18, v4

    if-eqz v8, :cond_5

    if-eqz v7, :cond_4

    .line 242
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/CardFragmentData;->getMoney()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v14, 0x1

    .line 244
    invoke-virtual {v1, v14, v8}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_5

    .line 249
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    and-long v14, v2, v12

    cmp-long v18, v14, v4

    if-eqz v18, :cond_7

    if-eqz v7, :cond_6

    .line 256
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/CardFragmentData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    const/4 v14, 0x2

    .line 258
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_7

    .line 263
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    cmp-long v14, v10, v4

    if-eqz v14, :cond_9

    .line 271
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v10, v6}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const-wide/16 v10, 0x32

    and-long v14, v2, v10

    cmp-long v6, v14, v4

    if-eqz v6, :cond_a

    .line 276
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v6, v8}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    and-long v10, v2, v12

    cmp-long v6, v10, v4

    if-eqz v6, :cond_b

    .line 281
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->realToolbarTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    and-long v6, v2, v16

    cmp-long v2, v6, v4

    if-eqz v2, :cond_c

    .line 286
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 201
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/CardFragmentData;
    .locals 1

    .line 152
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/CardFragmentData;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;
    .locals 1

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 109
    monitor-exit p0

    return v0

    .line 111
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

    .line 99
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 100
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 101
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

    .line 163
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->onChangeDataTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->onChangeDataMoney(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->onChangeDataTitleName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/CardFragmentData;)V
    .locals 6

    .line 143
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/CardFragmentData;

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 147
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->notifyPropertyChanged(I)V

    .line 148
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;)V
    .locals 6

    .line 131
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->mDirtyFlags:J

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 135
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->notifyPropertyChanged(I)V

    .line 136
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 134
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

    .line 119
    check-cast p2, Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/CardFragmentHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 122
    check-cast p2, Lru/rocketbank/r2d2/data/binding/CardFragmentData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;->setData(Lru/rocketbank/r2d2/data/binding/CardFragmentData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
