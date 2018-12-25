.class public Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityShopOrderBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final activityStoreCheckout:Landroid/support/constraint/ConstraintLayout;

.field public final address:Landroid/widget/AutoCompleteTextView;

.field public final addressError:Lru/rocketbank/core/widgets/RocketTextView;

.field public final addressProgressBar:Landroid/widget/ProgressBar;

.field public final addressView:Landroid/widget/FrameLayout;

.field public final buttonConfirm:Lru/rocketbank/core/widgets/RocketButton;

.field public final buttonHaveQuestion:Landroid/widget/ImageButton;

.field public final comment:Lru/rocketbank/core/widgets/RocketEditText;

.field public final commentView:Landroid/support/design/widget/TextInputLayout;

.field private mData:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final price:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090094

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090036

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090040

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09003e

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09003f

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900f4

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090092

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

    .line 426
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 60
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xc

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 61
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->activityStoreCheckout:Landroid/support/constraint/ConstraintLayout;

    const/4 v0, 0x1

    .line 62
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->address:Landroid/widget/AutoCompleteTextView;

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->address:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 64
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->addressError:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x9

    .line 65
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->addressProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x7

    .line 66
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->addressView:Landroid/widget/FrameLayout;

    const/16 v0, 0xb

    .line 67
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->buttonConfirm:Lru/rocketbank/core/widgets/RocketButton;

    const/4 v0, 0x5

    .line 68
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->buttonHaveQuestion:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->comment:Lru/rocketbank/core/widgets/RocketEditText;

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->comment:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 71
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->commentView:Landroid/support/design/widget/TextInputLayout;

    const/4 v0, 0x0

    .line 72
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 74
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->price:Lru/rocketbank/core/widgets/RocketTextView;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->price:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 76
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 77
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->setRootTag(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;
    .locals 1

    .line 446
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;
    .locals 2

    const-string v0, "layout/activity_shop_order_0"

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
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;
    .locals 1

    .line 438
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;
    .locals 3

    const v0, 0x7f0c005d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;
    .locals 1

    .line 430
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;
    .locals 1

    const v0, 0x7f0c005d

    .line 434
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    return-object p0
.end method

.method private onChangeData(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 187
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 191
    monitor-enter p0

    .line 192
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 193
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x12

    if-ne p2, v0, :cond_2

    .line 197
    monitor-enter p0

    .line 198
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 199
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x40

    if-ne p2, v0, :cond_3

    .line 203
    monitor-enter p0

    .line 204
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 205
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDataAddress(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 229
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 235
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 239
    monitor-enter p0

    .line 240
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 241
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDataComment(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 148
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 154
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 158
    monitor-enter p0

    .line 159
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 160
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDataGetFieldJavaLangStringAddress(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 169
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

.method private onChangeDataGetFieldJavaLangStringComment(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 178
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

.method private onChangeDataPrice(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 214
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 218
    monitor-enter p0

    .line 219
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 220
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 29

    move-object/from16 v1, p0

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 252
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 253
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mData:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    const-wide/16 v7, 0xfff

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v12, 0x918

    const-wide/16 v14, 0x80c

    const-wide/16 v16, 0x80a

    const-wide/16 v18, 0x889

    const-wide/16 v20, 0x849

    const/16 v22, 0x0

    if-eqz v7, :cond_16

    const-wide/16 v23, 0x8c9

    and-long v25, v2, v23

    cmp-long v7, v25, v4

    const v8, 0x7f080294

    const v9, 0x7f080296

    const/4 v10, 0x0

    if-eqz v7, :cond_7

    if-eqz v6, :cond_0

    .line 277
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getComment()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v22

    .line 279
    :goto_0
    invoke-virtual {v1, v10, v7}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v23, v2, v20

    cmp-long v11, v23, v4

    if-eqz v11, :cond_5

    if-eqz v7, :cond_1

    .line 285
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v10

    :goto_1
    cmp-long v25, v23, v4

    if-eqz v25, :cond_3

    if-eqz v11, :cond_2

    const-wide/32 v23, 0x8000

    or-long v25, v2, v23

    goto :goto_2

    :cond_2
    const-wide/16 v23, 0x4000

    or-long v25, v2, v23

    goto :goto_2

    :cond_3
    move-wide/from16 v25, v2

    :goto_2
    if-eqz v11, :cond_4

    .line 298
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->comment:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v9}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->comment:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v8}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    move-object v11, v2

    move-wide/from16 v2, v25

    goto :goto_4

    :cond_5
    move-object/from16 v11, v22

    :goto_4
    and-long v23, v2, v18

    cmp-long v25, v23, v4

    if-eqz v25, :cond_6

    if-eqz v7, :cond_6

    .line 304
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    move-object/from16 v7, v22

    goto :goto_5

    :cond_7
    move-object/from16 v7, v22

    move-object v11, v7

    :goto_5
    and-long v23, v2, v16

    cmp-long v25, v23, v4

    if-eqz v25, :cond_9

    if-eqz v6, :cond_8

    const-string v10, "address"

    .line 312
    invoke-virtual {v6, v10}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v10

    goto :goto_6

    :cond_8
    move-object/from16 v10, v22

    :goto_6
    const/4 v8, 0x1

    .line 314
    invoke-virtual {v1, v8, v10}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_9

    .line 319
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v8

    goto :goto_7

    :cond_9
    move-object/from16 v8, v22

    :goto_7
    and-long v23, v2, v14

    cmp-long v10, v23, v4

    if-eqz v10, :cond_b

    if-eqz v6, :cond_a

    const-string v10, "comment"

    .line 326
    invoke-virtual {v6, v10}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v10

    goto :goto_8

    :cond_a
    move-object/from16 v10, v22

    :goto_8
    const/4 v14, 0x2

    .line 328
    invoke-virtual {v1, v14, v10}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_b

    .line 333
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v10

    goto :goto_9

    :cond_b
    move-object/from16 v10, v22

    :goto_9
    and-long v14, v2, v12

    cmp-long v23, v14, v4

    if-eqz v23, :cond_d

    if-eqz v6, :cond_c

    .line 340
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getPrice()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v14

    goto :goto_a

    :cond_c
    move-object/from16 v14, v22

    :goto_a
    const/4 v15, 0x4

    .line 342
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_d

    .line 347
    invoke-virtual {v14}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_d
    move-object/from16 v14, v22

    :goto_b
    const-wide/16 v23, 0xe28

    and-long v25, v2, v23

    cmp-long v15, v25, v4

    if-eqz v15, :cond_15

    if-eqz v6, :cond_e

    .line 354
    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getAddress()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v6

    goto :goto_c

    :cond_e
    move-object/from16 v6, v22

    :goto_c
    const/4 v15, 0x5

    .line 356
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/16 v23, 0xc28

    and-long v25, v2, v23

    cmp-long v15, v25, v4

    if-eqz v15, :cond_f

    if-eqz v6, :cond_f

    .line 362
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v15

    goto :goto_d

    :cond_f
    move-object/from16 v15, v22

    :goto_d
    const-wide/16 v23, 0xa28

    and-long v25, v2, v23

    cmp-long v23, v25, v4

    if-eqz v23, :cond_14

    if-eqz v6, :cond_10

    .line 369
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v6

    move/from16 v27, v6

    goto :goto_e

    :cond_10
    const/16 v27, 0x0

    :goto_e
    cmp-long v6, v25, v4

    if-eqz v6, :cond_12

    if-eqz v27, :cond_11

    const-wide/16 v22, 0x2000

    or-long v24, v2, v22

    :goto_f
    move-wide/from16 v2, v24

    goto :goto_10

    :cond_11
    const-wide/16 v22, 0x1000

    or-long v24, v2, v22

    goto :goto_f

    :cond_12
    :goto_10
    if-eqz v27, :cond_13

    .line 382
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->address:Landroid/widget/AutoCompleteTextView;

    :goto_11
    invoke-static {v6, v9}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v22, v6

    goto :goto_12

    :cond_13
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->address:Landroid/widget/AutoCompleteTextView;

    const v9, 0x7f080294

    goto :goto_11

    :cond_14
    :goto_12
    move-object/from16 v6, v22

    goto :goto_13

    :cond_15
    move-object/from16 v6, v22

    move-object v15, v6

    goto :goto_13

    :cond_16
    move-object/from16 v6, v22

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v14, v11

    move-object v15, v14

    :goto_13
    and-long v22, v2, v16

    cmp-long v9, v22, v4

    if-eqz v9, :cond_17

    .line 390
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->address:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9, v8}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_17
    const-wide/16 v8, 0xa28

    and-long v16, v2, v8

    cmp-long v8, v16, v4

    if-eqz v8, :cond_18

    .line 395
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->address:Landroid/widget/AutoCompleteTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_18
    const-wide/16 v8, 0xc28

    and-long v16, v2, v8

    cmp-long v6, v16, v4

    if-eqz v6, :cond_19

    .line 400
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->address:Landroid/widget/AutoCompleteTextView;

    invoke-static {v6, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_19
    const-wide/16 v8, 0x80c

    and-long v15, v2, v8

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1a

    .line 405
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->comment:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v6, v10}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1a
    and-long v8, v2, v20

    cmp-long v6, v8, v4

    if-eqz v6, :cond_1b

    .line 410
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->comment:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v11}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    and-long v8, v2, v18

    cmp-long v6, v8, v4

    if-eqz v6, :cond_1c

    .line 415
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->comment:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    and-long v6, v2, v12

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1d

    .line 420
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->price:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 253
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;
    .locals 1

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mData:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 94
    monitor-exit p0

    return v0

    .line 96
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

    .line 84
    monitor-enter p0

    const-wide/16 v0, 0x800

    .line 85
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 86
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

    .line 140
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->onChangeDataAddress(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->onChangeDataPrice(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 136
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->onChangeData(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;I)Z

    move-result p1

    return p1

    .line 134
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->onChangeDataGetFieldJavaLangStringComment(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->onChangeDataGetFieldJavaLangStringAddress(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 130
    :pswitch_5
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->onChangeDataComment(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

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

.method public setData(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V
    .locals 6

    const/4 v0, 0x3

    .line 113
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 114
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mData:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 118
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
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

    .line 104
    check-cast p2, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;->setData(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
