.class public Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ShopDetailsImageBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final child:Landroid/widget/FrameLayout;

.field public final imageView:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mImage:Lru/rocketbank/core/network/model/ShopImage;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView1:Landroid/widget/ImageView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final viewColor:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900d8

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090409

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ba

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901cc

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 156
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mDirtyFlags:J

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 45
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->child:Landroid/widget/FrameLayout;

    const/4 v1, 0x5

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->imageView:Landroid/widget/ImageView;

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mboundView1:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 51
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x3

    .line 52
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->viewColor:Landroid/view/View;

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;
    .locals 1

    .line 176
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;
    .locals 2

    const-string v0, "layout/shop_details_image_0"

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
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

    .line 183
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;
    .locals 1

    .line 168
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;
    .locals 3

    const v0, 0x7f0c01ae

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;
    .locals 1

    .line 160
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;
    .locals 1

    const v0, 0x7f0c01ae

    .line 164
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 14

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 113
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 116
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mImage:Lru/rocketbank/core/network/model/ShopImage;

    const-wide/16 v6, 0x3

    and-long v8, v0, v6

    cmp-long v10, v8, v2

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v5}, Lru/rocketbank/core/network/model/ShopImage;->getTexture_url()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v11

    :goto_0
    cmp-long v10, v8, v2

    if-eqz v10, :cond_3

    if-eqz v5, :cond_2

    const-wide/16 v8, 0x8

    or-long v12, v0, v8

    :goto_1
    move-wide v0, v12

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x4

    or-long v12, v0, v8

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    move v11, v5

    :cond_5
    :goto_3
    and-long v8, v0, v6

    cmp-long v0, v8, v2

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mboundView1:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lru/rocketbank/r2d2/utils/BindingUtils;->imageUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_6
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

.method public getImage()Lru/rocketbank/core/network/model/ShopImage;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mImage:Lru/rocketbank/core/network/model/ShopImage;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mDirtyFlags:J

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
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->requestRebind()V

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

.method public setImage(Lru/rocketbank/core/network/model/ShopImage;)V
    .locals 6

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mImage:Lru/rocketbank/core/network/model/ShopImage;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2b

    .line 93
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x2b

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Lru/rocketbank/core/network/model/ShopImage;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->setImage(Lru/rocketbank/core/network/model/ShopImage;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
