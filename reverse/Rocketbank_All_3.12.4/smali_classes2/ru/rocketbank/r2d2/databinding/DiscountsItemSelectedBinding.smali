.class public Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;
.super Landroid/databinding/ViewDataBinding;
.source "DiscountsItemSelectedBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final discountPercent:Lru/rocketbank/core/widgets/RocketTextView;

.field public final discountPicture:Lde/hdodenhof/circleimageview/CircleImageView;

.field public final discountProvider:Lru/rocketbank/core/widgets/RocketTextView;

.field private mCashback:Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090141

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 148
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mDirtyFlags:J

    .line 37
    sget-object v1, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 38
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountPercent:Lru/rocketbank/core/widgets/RocketTextView;

    .line 39
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountPercent:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 40
    aget-object v1, p1, v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountPicture:Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v1, 0x1

    .line 41
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountProvider:Lru/rocketbank/core/widgets/RocketTextView;

    .line 42
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountProvider:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 43
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;
    .locals 1

    .line 168
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;
    .locals 2

    const-string v0, "layout/discounts_item_selected_0"

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
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

    .line 175
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;
    .locals 1

    .line 160
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;
    .locals 3

    const v0, 0x7f0c00a7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;
    .locals 1

    .line 152
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;
    .locals 1

    const v0, 0x7f0c00a7

    .line 156
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mCashback:Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3

    and-long v8, v0, v6

    cmp-long v0, v8, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    .line 122
    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getPercent()I

    move-result v5

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 131
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    cmp-long v4, v8, v2

    if-eqz v4, :cond_3

    .line 141
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountPercent:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->discountProvider:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCashback()Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mCashback:Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCashback(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mCashback:Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xe

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0xe

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setCashback(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
