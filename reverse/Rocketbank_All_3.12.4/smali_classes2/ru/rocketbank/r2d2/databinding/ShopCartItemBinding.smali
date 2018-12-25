.class public Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ShopCartItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final attributes:Landroid/widget/LinearLayout;

.field public final deleteButton:Lru/rocketbank/core/widgets/RocketButton;

.field public final imageView6:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/core/model/shop/CartItem;

.field private final mboundView0:Landroid/support/v7/widget/CardView;

.field public final textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090060

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090393

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090125

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 153
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mDirtyFlags:J

    .line 43
    sget-object v1, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 44
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->attributes:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    .line 45
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->deleteButton:Lru/rocketbank/core/widgets/RocketButton;

    const/4 v1, 0x1

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->imageView6:Landroid/widget/ImageView;

    .line 47
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->imageView6:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 48
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mboundView0:Landroid/support/v7/widget/CardView;

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mboundView0:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x2

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
    .locals 1

    .line 173
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
    .locals 2

    const-string v0, "layout/shop_cart_item_0"

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
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

    .line 180
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
    .locals 1

    .line 165
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
    .locals 3

    const v0, 0x7f0c01ad

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
    .locals 1

    .line 157
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;
    .locals 1

    const v0, 0x7f0c01ad

    .line 161
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 113
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mItem:Lru/rocketbank/core/model/shop/CartItem;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v4}, Lru/rocketbank/core/model/shop/CartItem;->getImage()Lru/rocketbank/core/network/model/ShopImage;

    move-result-object v0

    .line 129
    invoke-virtual {v4}, Lru/rocketbank/core/model/shop/CartItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v4, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/ShopImage;->getImage_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v4, :cond_3

    const-string v1, "\n"

    const-string v5, " "

    .line 139
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_2
    cmp-long v4, v7, v2

    if-eqz v4, :cond_4

    .line 146
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->imageView6:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lru/rocketbank/r2d2/utils/BindingUtils;->imageUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getItem()Lru/rocketbank/core/model/shop/CartItem;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mItem:Lru/rocketbank/core/model/shop/CartItem;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 70
    monitor-exit p0

    return v0

    .line 72
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

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->requestRebind()V

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

    const/4 p1, 0x0

    return p1
.end method

.method public setItem(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 6

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mItem:Lru/rocketbank/core/model/shop/CartItem;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 93
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x31

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Lru/rocketbank/core/model/shop/CartItem;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;->setItem(Lru/rocketbank/core/model/shop/CartItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
