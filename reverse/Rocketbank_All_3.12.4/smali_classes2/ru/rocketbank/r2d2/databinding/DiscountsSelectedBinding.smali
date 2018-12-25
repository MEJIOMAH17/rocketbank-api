.class public Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;
.super Landroid/databinding/ViewDataBinding;
.source "DiscountsSelectedBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

.field public final discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

.field public final discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

.field private mDirtyFlags:J

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;",
            ">;"
        }
    .end annotation
.end field

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "discounts_item_selected"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "discounts_item_selected"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "discounts_item_selected"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x7f0c00a7
        0x7f0c00a7
        0x7f0c00a7
    .end array-data
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 201
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    .line 42
    sget-object v1, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 43
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    .line 44
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x4

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mboundView1:Landroid/widget/LinearLayout;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;
    .locals 1

    .line 221
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;
    .locals 2

    const-string v0, "layout/discounts_selected_0"

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
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

    .line 228
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;
    .locals 1

    .line 213
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;
    .locals 3

    const v0, 0x7f0c00a9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;
    .locals 1

    .line 205
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;
    .locals 1

    const v0, 0x7f0c00a9

    .line 209
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    return-object p0
.end method

.method private onChangeDiscountSelect1(Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    .line 137
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

.method private onChangeDiscountSelect2(Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    .line 155
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

.method private onChangeDiscountSelect3(Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    .line 146
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
    .locals 9

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 166
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mList:Ljava/util/List;

    const-wide/16 v5, 0x18

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 179
    invoke-static {v4, v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const/4 v0, 0x0

    .line 181
    invoke-static {v4, v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const/4 v5, 0x2

    .line 183
    invoke-static {v4, v5}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v4, v0

    :goto_0
    cmp-long v5, v7, v2

    if-eqz v5, :cond_1

    .line 190
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v2, v0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setCashback(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setCashback(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setCashback(Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 195
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 167
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mList:Ljava/util/List;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 73
    monitor-exit p0

    return v0

    .line 75
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 79
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 82
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 75
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->invalidateAll()V

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->invalidateAll()V

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->invalidateAll()V

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
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

    .line 129
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->onChangeDiscountSelect2(Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;I)Z

    move-result p1

    return p1

    .line 127
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->onChangeDiscountSelect3(Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;I)Z

    move-result p1

    return p1

    .line 125
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->onChangeDiscountSelect1(Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect1:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect2:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->discountSelect3:Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mList:Ljava/util/List;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x36

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->notifyPropertyChanged(I)V

    .line 106
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x36

    if-ne v0, p1, :cond_0

    .line 92
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;->setList(Ljava/util/List;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
