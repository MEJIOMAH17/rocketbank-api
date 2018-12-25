.class public Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityCardTransferAmountBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

.field public final amount:Lru/rocketbank/core/widgets/RocketEditText;

.field public final backround:Landroid/widget/ImageView;

.field public final cardName:Lru/rocketbank/core/widgets/RocketTextView;

.field public final cardNumber:Lru/rocketbank/core/widgets/RocketTextView;

.field public final comment:Lru/rocketbank/core/widgets/RocketTextView;

.field public final commentCard:Landroid/support/v7/widget/CardView;

.field public final commission:Lru/rocketbank/core/widgets/RocketTextView;

.field public final commissionSwitcher:Landroid/widget/ViewSwitcher;

.field public final fullLoogo:Landroid/support/v7/widget/CardView;

.field private mAmountBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final scroll:Landroid/support/v4/widget/NestedScrollView;

.field public final toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x7

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0147

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090305

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09000f

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090195

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09006d

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09004d

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900fb

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x7

    .line 69
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 426
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 70
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xe

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x9

    .line 71
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/widget/AccountWidget;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->accountWidget:Lru/rocketbank/r2d2/widget/AccountWidget;

    const/16 v1, 0xc

    .line 72
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->amount:Lru/rocketbank/core/widgets/RocketEditText;

    const/16 v1, 0xb

    .line 73
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->backround:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->cardName:Lru/rocketbank/core/widgets/RocketTextView;

    .line 75
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->cardName:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 76
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->cardNumber:Lru/rocketbank/core/widgets/RocketTextView;

    .line 77
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->cardNumber:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 78
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    .line 79
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 80
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commentCard:Landroid/support/v7/widget/CardView;

    .line 81
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commentCard:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 82
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commission:Lru/rocketbank/core/widgets/RocketTextView;

    .line 83
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commission:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xd

    .line 84
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commissionSwitcher:Landroid/widget/ViewSwitcher;

    const/16 v1, 0xa

    .line 85
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->fullLoogo:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    .line 86
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 88
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 89
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 90
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v4/widget/NestedScrollView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->scroll:Landroid/support/v4/widget/NestedScrollView;

    .line 91
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 93
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setRootTag(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
    .locals 1

    .line 446
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
    .locals 2

    const-string v0, "layout/activity_card_transfer_amount_0"

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
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

    .line 453
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
    .locals 1

    .line 438
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
    .locals 3

    const v0, 0x7f0c002c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
    .locals 1

    .line 430
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;
    .locals 1

    const v0, 0x7f0c002c

    .line 434
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    return-object p0
.end method

.method private onChangeAmountBindingAmountTargetText(Landroid/databinding/ObservableField;I)Z
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

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 259
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

.method private onChangeAmountBindingCardName(Landroid/databinding/ObservableField;I)Z
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

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 241
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

.method private onChangeAmountBindingCardNumber(Landroid/databinding/ObservableField;I)Z
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

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 223
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

.method private onChangeAmountBindingComment(Landroid/databinding/ObservableField;I)Z
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

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 205
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

.method private onChangeAmountBindingCommentVisibility(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 214
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

.method private onChangeAmountBindingCommission(Landroid/databinding/ObservableField;I)Z
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

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 232
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

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 250
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

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 270
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 271
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 277
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mAmountBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    .line 279
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    const-wide/16 v9, 0x55f

    and-long v11, v2, v9

    cmp-long v9, v11, v4

    const-wide/16 v14, 0x508

    const-wide/16 v16, 0x504

    const-wide/16 v18, 0x502

    const-wide/16 v20, 0x501

    const/4 v10, 0x0

    if-eqz v9, :cond_c

    and-long v22, v2, v20

    cmp-long v9, v22, v4

    if-eqz v9, :cond_1

    if-eqz v7, :cond_0

    .line 297
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getComment()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 299
    :goto_0
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_1

    .line 304
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    and-long v22, v2, v18

    cmp-long v24, v22, v4

    if-eqz v24, :cond_3

    if-eqz v7, :cond_2

    .line 311
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommentVisibility()Landroid/databinding/ObservableInt;

    move-result-object v22

    move-object/from16 v10, v22

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x1

    .line 313
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_3

    .line 318
    invoke-virtual {v10}, Landroid/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    and-long v22, v2, v16

    cmp-long v11, v22, v4

    if-eqz v11, :cond_5

    if-eqz v7, :cond_4

    .line 325
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCardNumber()Landroid/databinding/ObservableField;

    move-result-object v11

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x2

    .line 327
    invoke-virtual {v1, v12, v11}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_5

    .line 332
    invoke-virtual {v11}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    and-long v12, v2, v14

    cmp-long v22, v12, v4

    if-eqz v22, :cond_7

    if-eqz v7, :cond_6

    .line 339
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCommission()Landroid/databinding/ObservableField;

    move-result-object v12

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x3

    .line 341
    invoke-virtual {v1, v13, v12}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_7

    .line 346
    invoke-virtual {v12}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    const-wide/16 v22, 0x510

    and-long v24, v2, v22

    cmp-long v13, v24, v4

    if-eqz v13, :cond_9

    if-eqz v7, :cond_8

    .line 353
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getCardName()Landroid/databinding/ObservableField;

    move-result-object v13

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    :goto_8
    const/4 v14, 0x4

    .line 355
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_9

    .line 360
    invoke-virtual {v13}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    const-wide/16 v14, 0x540

    and-long v22, v2, v14

    cmp-long v14, v22, v4

    if-eqz v14, :cond_b

    if-eqz v7, :cond_a

    .line 367
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;->getAmountTargetText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_a

    :cond_a
    const/4 v7, 0x0

    :goto_a
    const/4 v14, 0x6

    .line 369
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_b

    .line 374
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_b
    const-wide/16 v14, 0x510

    and-long v22, v2, v14

    cmp-long v14, v22, v4

    if-eqz v14, :cond_d

    .line 384
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->cardName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v14, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    and-long v13, v2, v16

    cmp-long v15, v13, v4

    if-eqz v15, :cond_e

    .line 389
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->cardNumber:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v13, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    and-long v13, v2, v20

    cmp-long v11, v13, v4

    if-eqz v11, :cond_f

    .line 394
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->comment:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v11, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    and-long v13, v2, v18

    cmp-long v9, v13, v4

    if-eqz v9, :cond_10

    .line 399
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commentCard:Landroid/support/v7/widget/CardView;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :cond_10
    const-wide/16 v9, 0x508

    and-long v13, v2, v9

    cmp-long v9, v13, v4

    if-eqz v9, :cond_11

    .line 404
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->commission:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v9, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    const-wide/16 v9, 0x540

    and-long v11, v2, v9

    cmp-long v9, v11, v4

    if-eqz v9, :cond_12

    .line 409
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v9, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    const-wide/16 v9, 0x600

    and-long v11, v2, v9

    cmp-long v7, v11, v4

    if-eqz v7, :cond_13

    .line 414
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_13
    const-wide/16 v7, 0x480

    and-long v9, v2, v7

    cmp-long v2, v9, v4

    if-eqz v2, :cond_14

    .line 419
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v2, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 421
    :cond_14
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 271
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAmountBinding()Lru/rocketbank/r2d2/data/binding/AmountCardBinding;
    .locals 1

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mAmountBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 1

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 111
    monitor-exit p0

    return v0

    .line 113
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 100
    monitor-enter p0

    const-wide/16 v0, 0x400

    .line 101
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 104
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 102
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

    .line 197
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->onChangeAmountBindingAmountTargetText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 195
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->onChangeToolbarBlock(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1

    .line 193
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->onChangeAmountBindingCardName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 191
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->onChangeAmountBindingCommission(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 189
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->onChangeAmountBindingCardNumber(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 187
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->onChangeAmountBindingCommentVisibility(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 185
    :pswitch_6
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->onChangeAmountBindingComment(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAmountBinding(Lru/rocketbank/r2d2/data/binding/AmountCardBinding;)V
    .locals 6

    .line 151
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mAmountBinding:Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 155
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->notifyPropertyChanged(I)V

    .line 156
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 163
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 167
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->notifyPropertyChanged(I)V

    .line 168
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 166
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 6

    .line 139
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->mDirtyFlags:J

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 143
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->notifyPropertyChanged(I)V

    .line 144
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 142
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

    .line 124
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 127
    check-cast p2, Lru/rocketbank/r2d2/data/binding/AmountCardBinding;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setAmountBinding(Lru/rocketbank/r2d2/data/binding/AmountCardBinding;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    if-ne v0, p1, :cond_2

    .line 130
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
