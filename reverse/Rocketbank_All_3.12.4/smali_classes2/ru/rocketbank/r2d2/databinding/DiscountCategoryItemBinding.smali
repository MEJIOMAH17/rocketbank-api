.class public Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "DiscountCategoryItemBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final discountPicture:Lru/rocketbank/core/widgets/SquareLayout;

.field public final imageView:Landroid/support/v7/widget/AppCompatImageView;

.field private final mCallback15:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mDiscount:Lru/rocketbank/core/model/discounts/Discount;

.field private mListener:Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 151
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    .line 36
    sget-object v1, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 37
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/SquareLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->discountPicture:Lru/rocketbank/core/widgets/SquareLayout;

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->discountPicture:Lru/rocketbank/core/widgets/SquareLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/SquareLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 39
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->imageView:Landroid/support/v7/widget/AppCompatImageView;

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->imageView:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->setRootTag(Landroid/view/View;)V

    .line 43
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mCallback15:Landroid/view/View$OnClickListener;

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;
    .locals 1

    .line 171
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;
    .locals 2

    const-string v0, "layout/discount_category_item_0"

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
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

    .line 178
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;
    .locals 1

    .line 163
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;
    .locals 3

    const v0, 0x7f0c00a4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;
    .locals 1

    .line 155
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;
    .locals 1

    const v0, 0x7f0c00a4

    .line 159
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDiscount:Lru/rocketbank/core/model/discounts/Discount;

    .line 137
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v0, p2, p1}, Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;->onDiscountClick(Landroid/view/View;Lru/rocketbank/core/model/discounts/Discount;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 8

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 117
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x4

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->imageView:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mCallback15:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDiscount()Lru/rocketbank/core/model/discounts/Discount;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDiscount:Lru/rocketbank/core/model/discounts/Discount;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 50
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
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

.method public setDiscount(Lru/rocketbank/core/model/discounts/Discount;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDiscount:Lru/rocketbank/core/model/discounts/Discount;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->setListener(Lru/rocketbank/r2d2/data/binding/discount/OnDiscountClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    if-ne v0, p1, :cond_1

    .line 72
    check-cast p2, Lru/rocketbank/core/model/discounts/Discount;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;->setDiscount(Lru/rocketbank/core/model/discounts/Discount;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
