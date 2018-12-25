.class public Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityShopDetailsBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final attributes:Landroid/widget/LinearLayout;

.field public final backView:Landroid/view/View;

.field public final blockingView:Landroid/view/View;

.field public final constraintLayout:Landroid/support/constraint/ConstraintLayout;

.field public final content:Landroid/support/design/widget/CoordinatorLayout;

.field public final fab:Landroid/support/design/widget/FloatingActionButton;

.field public final images:Lru/rocketbank/r2d2/shop/feed/RatioLayout;

.field private mDirtyFlags:J

.field private mItem:Lru/rocketbank/core/model/shop/ShopItem;

.field public final observableScrollView:Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;

.field public final pageIndicator:Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

.field public final textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewComposition:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewCompositionTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090286

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090102

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901da

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090067

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09040b

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090083

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902a1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090393

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090060

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090170

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 210
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mDirtyFlags:J

    .line 71
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0xe

    .line 72
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->attributes:Landroid/widget/LinearLayout;

    const/16 v1, 0x9

    .line 73
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->backView:Landroid/view/View;

    const/16 v1, 0xb

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->blockingView:Landroid/view/View;

    const/4 v1, 0x7

    .line 75
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->constraintLayout:Landroid/support/constraint/ConstraintLayout;

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->content:Landroid/support/design/widget/CoordinatorLayout;

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->content:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xf

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v0, 0x8

    .line 79
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/shop/feed/RatioLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->images:Lru/rocketbank/r2d2/shop/feed/RatioLayout;

    const/4 v0, 0x6

    .line 80
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->observableScrollView:Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;

    const/16 v0, 0xc

    .line 81
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->pageIndicator:Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

    const/16 v0, 0xd

    .line 82
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x4

    .line 83
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewComposition:Lru/rocketbank/core/widgets/RocketTextView;

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewComposition:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 85
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewCompositionTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewCompositionTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 87
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 89
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 91
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0xa

    .line 92
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 93
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->setRootTag(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;
    .locals 1

    .line 230
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;
    .locals 2

    const-string v0, "layout/activity_shop_details_0"

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
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

    .line 237
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;
    .locals 1

    .line 222
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;
    .locals 3

    const v0, 0x7f0c005b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;
    .locals 1

    .line 214
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;
    .locals 1

    const v0, 0x7f0c005b

    .line 218
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 18

    move-object/from16 v1, p0

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 153
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mDirtyFlags:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mItem:Lru/rocketbank/core/model/shop/ShopItem;

    const-wide/16 v7, 0x3

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_6

    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getStructure()Ljava/lang/String;

    move-result-object v11

    .line 171
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 173
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/ShopItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v13

    move-object v11, v6

    move-object v14, v11

    :goto_0
    if-eqz v11, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move v15, v12

    :goto_1
    cmp-long v16, v9, v4

    if-eqz v16, :cond_3

    if-eqz v15, :cond_2

    const-wide/16 v9, 0x8

    or-long v16, v2, v9

    :goto_2
    move-wide/from16 v2, v16

    goto :goto_3

    :cond_2
    const-wide/16 v9, 0x4

    or-long v16, v2, v9

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v14, :cond_4

    const-string v9, "\n"

    const-string v10, " "

    .line 189
    invoke-virtual {v14, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    :cond_4
    if-eqz v15, :cond_5

    goto :goto_4

    :cond_5
    const/16 v9, 0x8

    move v12, v9

    :goto_4
    move-object v9, v13

    move-object v13, v11

    goto :goto_5

    :cond_6
    move-object v6, v13

    move-object v9, v6

    :goto_5
    and-long v10, v2, v7

    cmp-long v2, v10, v4

    if-eqz v2, :cond_7

    .line 200
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewComposition:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewComposition:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 202
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewCompositionTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 203
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->textViewTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getItem()Lru/rocketbank/core/model/shop/ShopItem;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mItem:Lru/rocketbank/core/model/shop/ShopItem;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 110
    monitor-exit p0

    return v0

    .line 112
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

    .line 100
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 101
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->requestRebind()V

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

    const/4 p1, 0x0

    return p1
.end method

.method public setItem(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 6

    .line 129
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mItem:Lru/rocketbank/core/model/shop/ShopItem;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->mDirtyFlags:J

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 133
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->notifyPropertyChanged(I)V

    .line 134
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 132
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

    .line 120
    check-cast p2, Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->setItem(Lru/rocketbank/core/model/shop/ShopItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
