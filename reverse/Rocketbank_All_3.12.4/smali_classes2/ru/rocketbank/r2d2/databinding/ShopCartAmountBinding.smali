.class public Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ShopCartAmountBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mOldPriceGet:D

.field private mPrice:Landroid/databinding/ObservableDouble;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 137
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    .line 33
    sget-object v1, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 34
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 35
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
    .locals 1

    .line 157
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
    .locals 2

    const-string v0, "layout/shop_cart_amount_0"

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
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

    .line 164
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
    .locals 1

    .line 149
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
    .locals 3

    const v0, 0x7f0c01ab

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
    .locals 1

    .line 141
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;
    .locals 1

    const v0, 0x7f0c01ab

    .line 145
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    return-object p0
.end method

.method private onChangePrice(Landroid/databinding/ObservableDouble;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    .line 99
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
    .locals 11

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mPrice:Landroid/databinding/ObservableDouble;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3

    and-long v9, v0, v7

    cmp-long v0, v9, v2

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v4}, Landroid/databinding/ObservableDouble;->get()D

    move-result-wide v5

    :cond_0
    cmp-long v0, v9, v2

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    iget-wide v7, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mOldPriceGet:D

    invoke-static {v0, v7, v8, v5, v6}, Lru/rocketbank/r2d2/utils/BindingUtils;->textAmountRocket(Lru/rocketbank/core/widgets/RocketTextView;DD)V

    :cond_1
    cmp-long v0, v9, v2

    if-eqz v0, :cond_2

    .line 131
    iput-wide v5, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mOldPriceGet:D

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPrice()Landroid/databinding/ObservableDouble;
    .locals 1

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mPrice:Landroid/databinding/ObservableDouble;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 46
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    check-cast p2, Landroid/databinding/ObservableDouble;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->onChangePrice(Landroid/databinding/ObservableDouble;I)Z

    move-result p1

    return p1
.end method

.method public setPrice(Landroid/databinding/ObservableDouble;)V
    .locals 6

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 75
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mPrice:Landroid/databinding/ObservableDouble;

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x40

    .line 79
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->notifyPropertyChanged(I)V

    .line 80
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x40

    if-ne v0, p1, :cond_0

    .line 65
    check-cast p2, Landroid/databinding/ObservableDouble;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;->setPrice(Landroid/databinding/ObservableDouble;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
