.class public Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ShopListItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final content:Landroid/support/constraint/ConstraintLayout;

.field public final imageView:Landroid/widget/ImageView;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/core/model/shop/ShopItem;

.field private final mboundView0:Landroid/support/v7/widget/CardView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final rocketTextView3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewPromo:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textureView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090105

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902ba

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901cc

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 232
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mDirtyFlags:J

    .line 49
    sget-object v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 50
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->content:Landroid/support/constraint/ConstraintLayout;

    const/16 v1, 0x8

    .line 51
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->imageView:Landroid/widget/ImageView;

    .line 52
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mboundView0:Landroid/support/v7/widget/CardView;

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mboundView0:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    .line 55
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->rocketTextView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->rocketTextView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 57
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 59
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewPromo:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewPromo:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 61
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 63
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textureView:Landroid/widget/ImageView;

    .line 64
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textureView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->setRootTag(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
    .locals 1

    .line 252
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
    .locals 2

    const-string v0, "layout/shop_list_item_0"

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
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

    .line 259
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
    .locals 1

    .line 244
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
    .locals 3

    const v0, 0x7f0c01b0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
    .locals 1

    .line 236
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
    .locals 1

    const v0, 0x7f0c01b0

    .line 240
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 24

    move-object/from16 v1, p0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 125
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mItem:Lru/rocketbank/core/model/shop/ShopItem;

    const-wide/16 v7, 0x3

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_9

    if-eqz v6, :cond_0

    .line 149
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getPromoText()Ljava/lang/String;

    move-result-object v11

    .line 151
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getImage()Lru/rocketbank/core/network/model/ShopImage;

    move-result-object v14

    .line 153
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 155
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getTextColor()I

    move-result v16

    .line 157
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getPromoTextColor()I

    move-result v17

    .line 159
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getFeedDescription()Ljava/lang/String;

    move-result-object v18

    .line 161
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getPromoTitleOpacity()Ljava/lang/Float;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v12

    move-object v11, v6

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v18, v15

    move/from16 v16, v13

    move/from16 v17, v16

    :goto_0
    if-eqz v14, :cond_1

    .line 167
    invoke-virtual {v14}, Lru/rocketbank/core/network/model/ShopImage;->getColorInt()I

    move-result v12

    .line 169
    invoke-virtual {v14}, Lru/rocketbank/core/network/model/ShopImage;->getTexture_url()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_1
    move-object v14, v12

    move v12, v13

    :goto_1
    const/16 v19, 0x1

    if-eqz v6, :cond_2

    move/from16 v20, v19

    goto :goto_2

    :cond_2
    move/from16 v20, v13

    :goto_2
    cmp-long v21, v9, v4

    if-eqz v21, :cond_4

    if-eqz v20, :cond_3

    const-wide/16 v9, 0x8

    or-long v21, v2, v9

    goto :goto_3

    :cond_3
    const-wide/16 v9, 0x4

    or-long v21, v2, v9

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v2

    :goto_3
    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v19, v13

    :goto_4
    and-long v2, v21, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_7

    if-eqz v19, :cond_6

    const-wide/16 v2, 0x20

    or-long v9, v21, v2

    :goto_5
    move-wide v2, v9

    goto :goto_6

    :cond_6
    const-wide/16 v2, 0x10

    or-long v9, v21, v2

    goto :goto_5

    :cond_7
    move-wide/from16 v2, v21

    :goto_6
    if-eqz v19, :cond_8

    goto :goto_7

    :cond_8
    const/16 v9, 0x8

    move v13, v9

    :goto_7
    move/from16 v23, v13

    move/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v14, v18

    move/from16 v13, v20

    goto :goto_8

    :cond_9
    move-object v6, v12

    move-object v11, v6

    move-object v14, v11

    move-object v15, v14

    move v9, v13

    move v10, v9

    move v12, v10

    move/from16 v23, v12

    :goto_8
    and-long v16, v2, v7

    cmp-long v2, v16, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    if-eqz v13, :cond_a

    .line 203
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_a
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v3

    :cond_b
    cmp-long v2, v16, v4

    if-eqz v2, :cond_c

    .line 213
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mboundView0:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2, v12}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 214
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->rocketTextView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->rocketTextView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 216
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 217
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewPromo:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v2, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewPromo:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v2, v10}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTextColor(I)V

    .line 219
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 221
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textureView:Landroid/widget/ImageView;

    move/from16 v13, v23

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-static {}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->getBuildSdkInt()I

    move-result v2

    const/16 v4, 0xb

    if-lt v2, v4, :cond_c

    .line 225
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewPromo:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setAlpha(F)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getItem()Lru/rocketbank/core/model/shop/ShopItem;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mItem:Lru/rocketbank/core/model/shop/ShopItem;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 82
    monitor-exit p0

    return v0

    .line 84
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

    .line 72
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 73
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 74
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

.method public setItem(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 6

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mItem:Lru/rocketbank/core/model/shop/ShopItem;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x31

    if-ne v0, p1, :cond_0

    .line 92
    check-cast p2, Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->setItem(Lru/rocketbank/core/model/shop/ShopItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
