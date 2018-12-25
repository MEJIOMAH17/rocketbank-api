.class public Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentCardDetailBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final backgroundImage:Landroid/widget/ImageView;

.field public final body:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field public final cardContainer:Landroid/widget/RelativeLayout;

.field public final cardOverlay:Landroid/view/View;

.field public final fab:Landroid/support/design/widget/FloatingActionButton;

.field public final header:Landroid/widget/FrameLayout;

.field private final mCallback14:Landroid/view/View$OnClickListener;

.field private mCardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;

.field private mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field private final mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

.field public final swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarReal:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09006a

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900bc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09036b

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090084

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/16 v0, 0xa

    .line 62
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 562
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 63
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 64
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 65
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x9

    .line 66
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->backgroundImage:Landroid/widget/ImageView;

    const/16 v1, 0xc

    .line 67
    aget-object v1, p1, v1

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->body:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    .line 68
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->cardContainer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x5

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->cardOverlay:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->cardOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 71
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 73
    aget-object v1, p1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->header:Landroid/widget/FrameLayout;

    .line 74
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->header:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 75
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 76
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 77
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 78
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x7

    .line 79
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    .line 80
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xb

    .line 81
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->swipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x2

    .line 82
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 83
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 84
    aget-object p1, p1, v1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->setRootTag(Landroid/view/View;)V

    .line 88
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mCallback14:Landroid/view/View$OnClickListener;

    .line 89
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;
    .locals 1

    .line 582
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;
    .locals 2

    const-string v0, "layout/fragment_card_detail_0"

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
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

    .line 589
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;
    .locals 1

    .line 574
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;
    .locals 3

    const v0, 0x7f0c00c8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 578
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;
    .locals 1

    .line 566
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;
    .locals 1

    const v0, 0x7f0c00c8

    .line 570
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    return-object p0
.end method

.method private onChangeCardBindingDataBalance(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

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

.method private onChangeCardBindingDataCardNumber(Landroid/databinding/ObservableField;I)Z
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

    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 216
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

.method private onChangeCardBindingDataIsRoubleCard(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 198
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

.method private onChangeCardBindingDataOverlayTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

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

.method private onChangeCardBindingDataParallaxTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 261
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

.method private onChangeCardBindingDataTitleBalance(Landroid/databinding/ObservableField;I)Z
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

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 252
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

.method private onChangeCardBindingDataTitleName(Landroid/databinding/ObservableField;I)Z
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

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 207
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

.method private onChangeCardBindingDataToolbarBackDrawable(Landroid/databinding/ObservableField;I)Z
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

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 243
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

.method private onChangeCardBindingDataToolbarTranslation(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 225
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

.method private onChangeCardBindingDataToolbarWhiteBackDrawable(Landroid/databinding/ObservableField;I)Z
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

    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 234
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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 548
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mHandler:Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 558
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;->onAmountPressed()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 39

    move-object/from16 v1, p0

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 272
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mHandler:Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;

    .line 284
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mCardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    const-wide/16 v8, 0x1400

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_1

    if-eqz v6, :cond_1

    .line 305
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mHandlerOnFabClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;)Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v11, 0x1bff

    and-long v13, v2, v11

    cmp-long v11, v13, v4

    const-wide/16 v16, 0x1880

    const-wide/16 v18, 0x1840

    const-wide/16 v20, 0x1820

    const-wide/16 v22, 0x1810

    const-wide/16 v24, 0x1808

    const-wide/16 v26, 0x1804

    const-wide/16 v28, 0x1802

    const-wide/16 v30, 0x1801

    const/4 v10, 0x0

    if-eqz v11, :cond_1a

    and-long v33, v2, v30

    cmp-long v11, v33, v4

    if-eqz v11, :cond_3

    if-eqz v7, :cond_2

    .line 315
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getBalance()Landroid/databinding/ObservableField;

    move-result-object v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 317
    :goto_2
    invoke-virtual {v1, v10, v11}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_3

    .line 322
    invoke-virtual {v11}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    and-long v33, v2, v28

    cmp-long v35, v33, v4

    if-eqz v35, :cond_5

    if-eqz v7, :cond_4

    .line 329
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getOverlayTranslation()Landroid/databinding/ObservableInt;

    move-result-object v33

    move-object/from16 v10, v33

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const/4 v8, 0x1

    .line 331
    invoke-virtual {v1, v8, v10}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_5

    .line 336
    invoke-virtual {v10}, Landroid/databinding/ObservableInt;->get()I

    move-result v8

    move v10, v8

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    and-long v8, v2, v26

    cmp-long v33, v8, v4

    if-eqz v33, :cond_b

    if-eqz v7, :cond_6

    .line 343
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->isRoubleCard()Landroid/databinding/ObservableBoolean;

    move-result-object v33

    move-object/from16 v12, v33

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x2

    .line 345
    invoke-virtual {v1, v13, v12}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_7

    .line 350
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v12

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    cmp-long v13, v8, v4

    if-eqz v13, :cond_9

    if-eqz v12, :cond_8

    const-wide/16 v8, 0x4000

    or-long v33, v2, v8

    :goto_8
    move-wide/from16 v2, v33

    goto :goto_9

    :cond_8
    const-wide/16 v8, 0x2000

    or-long v33, v2, v8

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v12, :cond_a

    .line 363
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const v9, 0x7f0800ce

    :goto_a
    invoke-static {v8, v9}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_b

    :cond_a
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const v9, 0x7f080255

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    :goto_b
    and-long v12, v2, v24

    cmp-long v9, v12, v4

    if-eqz v9, :cond_d

    if-eqz v7, :cond_c

    .line 369
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getTitleName()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_c

    :cond_c
    const/4 v9, 0x0

    :goto_c
    const/4 v12, 0x3

    .line 371
    invoke-virtual {v1, v12, v9}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_d

    .line 376
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_d

    :cond_d
    const/4 v9, 0x0

    :goto_d
    and-long v12, v2, v22

    cmp-long v33, v12, v4

    if-eqz v33, :cond_f

    if-eqz v7, :cond_e

    .line 383
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getCardNumber()Landroid/databinding/ObservableField;

    move-result-object v12

    goto :goto_e

    :cond_e
    const/4 v12, 0x0

    :goto_e
    const/4 v13, 0x4

    .line 385
    invoke-virtual {v1, v13, v12}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_f

    .line 390
    invoke-virtual {v12}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_f

    :cond_f
    const/4 v12, 0x0

    :goto_f
    and-long v33, v2, v20

    cmp-long v13, v33, v4

    if-eqz v13, :cond_11

    if-eqz v7, :cond_10

    .line 397
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getToolbarTranslation()Landroid/databinding/ObservableInt;

    move-result-object v13

    goto :goto_10

    :cond_10
    const/4 v13, 0x0

    :goto_10
    const/4 v14, 0x5

    .line 399
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_11

    .line 404
    invoke-virtual {v13}, Landroid/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_11

    :cond_11
    const/4 v13, 0x0

    :goto_11
    and-long v14, v2, v18

    cmp-long v33, v14, v4

    if-eqz v33, :cond_13

    if-eqz v7, :cond_12

    .line 411
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getToolbarWhiteBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v14

    goto :goto_12

    :cond_12
    const/4 v14, 0x0

    :goto_12
    const/4 v15, 0x6

    .line 413
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_13

    .line 418
    invoke-virtual {v14}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/Drawable;

    goto :goto_13

    :cond_13
    const/4 v14, 0x0

    :goto_13
    and-long v33, v2, v16

    cmp-long v15, v33, v4

    if-eqz v15, :cond_15

    if-eqz v7, :cond_14

    .line 425
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getToolbarBackDrawable()Landroid/databinding/ObservableField;

    move-result-object v15

    goto :goto_14

    :cond_14
    const/4 v15, 0x0

    :goto_14
    const/4 v4, 0x7

    .line 427
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_15

    .line 432
    invoke-virtual {v15}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_15

    :cond_15
    const/4 v4, 0x0

    :goto_15
    const-wide/16 v33, 0x1900

    and-long v36, v2, v33

    const-wide/16 v33, 0x0

    cmp-long v5, v36, v33

    if-eqz v5, :cond_17

    if-eqz v7, :cond_16

    .line 439
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getTitleBalance()Landroid/databinding/ObservableField;

    move-result-object v5

    goto :goto_16

    :cond_16
    const/4 v5, 0x0

    :goto_16
    const/16 v15, 0x8

    .line 441
    invoke-virtual {v1, v15, v5}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_17

    .line 446
    invoke-virtual {v5}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_17

    :cond_17
    const/4 v5, 0x0

    :goto_17
    const-wide/16 v33, 0x1a00

    and-long v36, v2, v33

    const-wide/16 v33, 0x0

    cmp-long v15, v36, v33

    if-eqz v15, :cond_19

    if-eqz v7, :cond_18

    .line 453
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->getParallaxTranslation()Landroid/databinding/ObservableInt;

    move-result-object v7

    goto :goto_18

    :cond_18
    const/4 v7, 0x0

    :goto_18
    const/16 v15, 0x9

    .line 455
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_19

    .line 460
    invoke-virtual {v7}, Landroid/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_19

    :cond_19
    const/4 v7, 0x0

    goto :goto_19

    :cond_1a
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_19
    const-wide/16 v32, 0x1000

    and-long v34, v2, v32

    const-wide/16 v32, 0x0

    cmp-long v15, v34, v32

    if-eqz v15, :cond_1b

    .line 468
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    move-object/from16 v38, v4

    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mCallback14:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v4}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1a

    :cond_1b
    move-object/from16 v38, v4

    :goto_1a
    and-long v34, v2, v30

    cmp-long v4, v34, v32

    if-eqz v4, :cond_1c

    .line 473
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v4, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    and-long v30, v2, v28

    cmp-long v4, v30, v32

    const/16 v11, 0xb

    if-eqz v4, :cond_1d

    .line 477
    invoke-static {}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->getBuildSdkInt()I

    move-result v4

    if-lt v4, v11, :cond_1d

    .line 479
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->cardOverlay:Landroid/view/View;

    int-to-float v10, v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_1d
    const-wide/16 v28, 0x1400

    and-long v30, v2, v28

    const-wide/16 v28, 0x0

    cmp-long v4, v30, v28

    if-eqz v4, :cond_1e

    .line 485
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v4, v6}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    and-long v30, v2, v26

    cmp-long v4, v30, v28

    if-eqz v4, :cond_1f

    .line 490
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v4, v8}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    const-wide/16 v26, 0x1a00

    and-long v30, v2, v26

    cmp-long v4, v30, v28

    if-eqz v4, :cond_20

    .line 494
    invoke-static {}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->getBuildSdkInt()I

    move-result v4

    if-lt v4, v11, :cond_20

    .line 496
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->header:Landroid/widget/FrameLayout;

    int-to-float v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_20
    and-long v6, v2, v22

    cmp-long v4, v6, v28

    if-eqz v4, :cond_21

    .line 502
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v4, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_21
    const-wide/16 v6, 0x1900

    and-long v22, v2, v6

    cmp-long v4, v22, v28

    if-eqz v4, :cond_22

    .line 507
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_22
    and-long v4, v2, v24

    cmp-long v6, v4, v28

    if-eqz v6, :cond_23

    .line 512
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_23
    and-long v4, v2, v18

    cmp-long v6, v4, v28

    if-eqz v6, :cond_24

    .line 517
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v14}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_24
    and-long v4, v2, v20

    cmp-long v6, v4, v28

    if-eqz v6, :cond_25

    .line 521
    invoke-static {}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->getBuildSdkInt()I

    move-result v4

    if-lt v4, v11, :cond_25

    .line 523
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    int-to-float v5, v13

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    :cond_25
    and-long v4, v2, v16

    cmp-long v2, v4, v28

    if-eqz v2, :cond_26

    .line 529
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->toolbarReal:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v4, v38

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_26
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 273
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCardBindingData()Lru/rocketbank/r2d2/root/card/binding/CardBindingData;
    .locals 1

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mCardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;
    .locals 1

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mHandler:Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 104
    monitor-exit p0

    return v0

    .line 106
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

    .line 94
    monitor-enter p0

    const-wide/16 v0, 0x1000

    .line 95
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 96
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

    .line 172
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataParallaxTranslation(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 170
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataTitleBalance(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataToolbarBackDrawable(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 166
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataToolbarWhiteBackDrawable(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 164
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataToolbarTranslation(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 162
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataCardNumber(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 160
    :pswitch_6
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataTitleName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 158
    :pswitch_7
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataIsRoubleCard(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 156
    :pswitch_8
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataOverlayTranslation(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 154
    :pswitch_9
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->onChangeCardBindingDataBalance(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCardBindingData(Lru/rocketbank/r2d2/root/card/binding/CardBindingData;)V
    .locals 6

    .line 138
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mCardBindingData:Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xb

    .line 142
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->notifyPropertyChanged(I)V

    .line 143
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 141
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;)V
    .locals 6

    .line 126
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mHandler:Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 130
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->notifyPropertyChanged(I)V

    .line 131
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 129
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

    .line 114
    check-cast p2, Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->setHandler(Lru/rocketbank/r2d2/root/card/binding/CardBindingHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne v0, p1, :cond_1

    .line 117
    check-cast p2, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;->setCardBindingData(Lru/rocketbank/r2d2/root/card/binding/CardBindingData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
