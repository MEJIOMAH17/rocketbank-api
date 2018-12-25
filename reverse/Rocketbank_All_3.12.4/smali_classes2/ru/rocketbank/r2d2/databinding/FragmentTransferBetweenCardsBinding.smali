.class public Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentTransferBetweenCardsBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

.field public final currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

.field public final destination:Landroid/support/v4/view/ViewPager;

.field public final indeterminateProgress:Landroid/widget/ProgressBar;

.field public final inputAmount:Lru/rocketbank/core/widgets/RocketEditText;

.field private final mCallback19:Landroid/view/View$OnClickListener;

.field private final mCallback20:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/ImageView;

.field private final mboundView3:Landroid/widget/ImageView;

.field private final mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

.field public final source:Landroid/support/v4/view/ViewPager;

.field public final toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x6

    aput v5, v3, v4

    new-array v5, v1, [I

    const v6, 0x7f0c0147

    aput v6, v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09033f

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090138

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901f2

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090115

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x6

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 431
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    .line 64
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 65
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 66
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xa

    .line 67
    aget-object v1, p1, v1

    check-cast v1, Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->currencies:Lfr/castorflex/android/verticalviewpager/VerticalViewPager;

    const/16 v1, 0x8

    .line 68
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->destination:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    .line 69
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    .line 70
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x9

    .line 71
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->inputAmount:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v1, 0x1

    .line 72
    aget-object v3, p1, v1

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView1:Landroid/widget/LinearLayout;

    .line 73
    iget-object v3, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 74
    aget-object v4, p1, v3

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView2:Landroid/widget/ImageView;

    .line 75
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x3

    .line 76
    aget-object v4, p1, v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView3:Landroid/widget/ImageView;

    .line 77
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x5

    .line 78
    aget-object v4, p1, v4

    check-cast v4, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    .line 79
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x7

    .line 80
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->source:Landroid/support/v4/view/ViewPager;

    .line 81
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 83
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->setRootTag(Landroid/view/View;)V

    .line 85
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mCallback19:Landroid/view/View$OnClickListener;

    .line 86
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v3}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mCallback20:Landroid/view/View$OnClickListener;

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;
    .locals 1

    .line 451
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;
    .locals 2

    const-string v0, "layout/fragment_transfer_between_cards_0"

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
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

    .line 458
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;
    .locals 1

    .line 443
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;
    .locals 3

    const v0, 0x7f0c00fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 447
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;
    .locals 1

    .line 435
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;
    .locals 1

    const v0, 0x7f0c00fe

    .line 439
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    return-object p0
.end method

.method private onChangeDataCurrencyDownDrawable(Landroid/databinding/ObservableField;I)Z
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

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

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

.method private onChangeDataCurrencyUpDrawable(Landroid/databinding/ObservableField;I)Z
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

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

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

.method private onChangeDataInfoText(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/text/Spanned;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

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

.method private onChangeDataInfoTextColor(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

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

.method private onChangeDataProgressVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

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

.method private onChangeToolbarBlock(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

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


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 414
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 424
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;->onDownPressed()V

    goto :goto_0

    .line 397
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 407
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;->onUpPressed()V

    return-void

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 25

    move-object/from16 v1, p0

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 236
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    .line 237
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

    .line 246
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    const-wide/16 v8, 0x1af

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/16 v11, 0x188

    const-wide/16 v13, 0x184

    const-wide/16 v15, 0x182

    const-wide/16 v17, 0x181

    const/4 v9, 0x0

    if-eqz v8, :cond_f

    and-long v21, v2, v17

    cmp-long v8, v21, v4

    if-eqz v8, :cond_1

    if-eqz v7, :cond_0

    .line 262
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getCurrencyDownDrawable()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 264
    :goto_0
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 269
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    and-long v21, v2, v15

    cmp-long v23, v21, v4

    if-eqz v23, :cond_3

    if-eqz v7, :cond_2

    .line 276
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoText()Landroid/databinding/ObservableField;

    move-result-object v21

    move-object/from16 v9, v21

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x1

    .line 278
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_3

    .line 283
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    move-object v10, v9

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    and-long v21, v2, v13

    cmp-long v9, v21, v4

    if-eqz v9, :cond_5

    if-eqz v7, :cond_4

    .line 290
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getCurrencyUpDrawable()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const/4 v15, 0x2

    .line 292
    invoke-virtual {v1, v15, v9}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_5

    .line 297
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    and-long v15, v2, v11

    cmp-long v21, v15, v4

    if-eqz v21, :cond_7

    if-eqz v7, :cond_6

    .line 304
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getInfoTextColor()Landroid/databinding/ObservableInt;

    move-result-object v15

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    :goto_6
    const/4 v11, 0x3

    .line 306
    invoke-virtual {v1, v11, v15}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_7

    .line 311
    invoke-virtual {v15}, Landroid/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_7
    const-wide/16 v15, 0x1a0

    and-long v21, v2, v15

    cmp-long v12, v21, v4

    if-eqz v12, :cond_e

    if-eqz v7, :cond_8

    .line 318
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v12

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    const/4 v15, 0x5

    .line 320
    invoke-virtual {v1, v15, v12}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_9

    .line 325
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v12

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    cmp-long v15, v21, v4

    if-eqz v15, :cond_b

    if-eqz v12, :cond_a

    const-wide/16 v15, 0x400

    or-long v21, v2, v15

    const-wide/16 v2, 0x1000

    or-long v15, v21, v2

    :goto_a
    move-wide v2, v15

    goto :goto_b

    :cond_a
    const-wide/16 v15, 0x200

    or-long v21, v2, v15

    const-wide/16 v2, 0x800

    or-long v15, v21, v2

    goto :goto_a

    :cond_b
    :goto_b
    const/16 v15, 0x8

    if-eqz v12, :cond_c

    move/from16 v16, v15

    goto :goto_c

    :cond_c
    const/16 v16, 0x0

    :goto_c
    if-eqz v12, :cond_d

    const/4 v15, 0x0

    :cond_d
    move v12, v11

    const-wide/16 v19, 0x1a0

    move-object v11, v10

    move-object v10, v8

    move/from16 v8, v16

    goto :goto_d

    :cond_e
    move v12, v11

    const/4 v15, 0x0

    const-wide/16 v19, 0x1a0

    move-object v11, v10

    move-object v10, v8

    const/4 v8, 0x0

    goto :goto_d

    :cond_f
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x1a0

    :goto_d
    and-long v21, v2, v19

    cmp-long v16, v21, v4

    if-eqz v16, :cond_10

    .line 349
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v13, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v13, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_10
    const-wide/16 v13, 0x100

    and-long v15, v2, v13

    cmp-long v8, v15, v4

    if-eqz v8, :cond_11

    .line 355
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView2:Landroid/widget/ImageView;

    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mCallback19:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView3:Landroid/widget/ImageView;

    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mCallback20:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const-wide/16 v13, 0x184

    and-long v15, v2, v13

    cmp-long v8, v15, v4

    if-eqz v8, :cond_12

    .line 361
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView2:Landroid/widget/ImageView;

    invoke-static {v8, v9}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    and-long v8, v2, v17

    cmp-long v13, v8, v4

    if-eqz v13, :cond_13

    .line 366
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView3:Landroid/widget/ImageView;

    invoke-static {v8, v10}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_13
    const-wide/16 v8, 0x182

    and-long v13, v2, v8

    cmp-long v8, v13, v4

    if-eqz v8, :cond_14

    .line 371
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_14
    const-wide/16 v8, 0x188

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_15

    .line 376
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    :cond_15
    const-wide/16 v8, 0x140

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_16

    .line 381
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v8, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_16
    const-wide/16 v8, 0x180

    and-long v10, v2, v8

    cmp-long v2, v10, v4

    if-eqz v2, :cond_17

    .line 386
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v2, v7}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 388
    :cond_17
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 237
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;
    .locals 1

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;
    .locals 1

    .line 137
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 103
    monitor-exit p0

    return v0

    .line 105
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 92
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 93
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 94
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
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->onChangeDataProgressVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 170
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->onChangeToolbarBlock(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->onChangeDataInfoTextColor(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 166
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->onChangeDataCurrencyUpDrawable(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 164
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->onChangeDataInfoText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 162
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->onChangeDataCurrencyDownDrawable(Landroid/databinding/ObservableField;I)Z

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

.method public setData(Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;)V
    .locals 6

    .line 140
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mData:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 144
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->notifyPropertyChanged(I)V

    .line 145
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 143
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;)V
    .locals 6

    .line 128
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->mDirtyFlags:J

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 132
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->notifyPropertyChanged(I)V

    .line 133
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 116
    check-cast p2, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountsHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 119
    check-cast p2, Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;->setData(Lru/rocketbank/r2d2/data/binding/transfer/TransferAccountData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
