.class public final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;
.implements Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;,
        Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;",
        ">;",
        "Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;",
        "Lru/rocketbank/r2d2/shop/details/ShopDetailsContract$View;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopDetailsActivity.kt\nru/rocketbank/r2d2/shop/details/ShopDetailsActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,367:1\n1246#2:368\n1315#2,3:369\n49#3,2:372\n25#4,2:374\n*E\n*S KotlinDebug\n*F\n+ 1 ShopDetailsActivity.kt\nru/rocketbank/r2d2/shop/details/ShopDetailsActivity\n*L\n123#1:368\n123#1,3:369\n151#1,2:372\n152#1,2:374\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;

.field private static final KEY_STORE_ITEM:Ljava/lang/String; = "KEY_STORE_ITEM"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private actionBarSize:I

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

.field private currentToolbarColor:I

.field private flexibleSpaceImageHeight:I

.field private onScale:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onScaleEnd:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

.field private toolbarColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->Companion:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->toolbarColor:I

    return-void
.end method

.method public static final synthetic access$getCurrentToolbarColor$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->currentToolbarColor:I

    return p0
.end method

.method public static final synthetic access$getKEY_STORE_ITEM$cp()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->KEY_STORE_ITEM:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCurrentToolbarColor$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;I)V
    .locals 0

    .line 51
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->currentToolbarColor:I

    return-void
.end method

.method public static final synthetic access$showBlockingView(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->showBlockingView(Z)V

    return-void
.end method

.method private final showBlockingView(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 243
    sget p1, Lru/rocketbank/r2d2/R$id;->blockingView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "blockingView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    sget p1, Lru/rocketbank/r2d2/R$id;->blockingView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "blockingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 246
    :cond_0
    sget p1, Lru/rocketbank/r2d2/R$id;->blockingView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "blockingView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    sget p1, Lru/rocketbank/r2d2/R$id;->blockingView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "blockingView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private final showItem(Landroid/content/Intent;)V
    .locals 11

    .line 116
    sget-object v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->KEY_STORE_ITEM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/shop/ShopItem;

    .line 118
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewAmount:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewAmount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "shopItem"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060228

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, p1, v2}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->createShopItemAmountText(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    if-nez v0, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;->setItem(Lru/rocketbank/core/model/shop/ShopItem;)V

    .line 121
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->setShopItem(Lru/rocketbank/core/model/shop/ShopItem;)V

    .line 151
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    .line 368
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 369
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 370
    check-cast v6, Lru/rocketbank/core/network/model/ShopImage;

    .line 124
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lru/rocketbank/r2d2/R$id;->viewPager:I

    invoke-virtual {p0, v8}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    invoke-static {v7, v8, v4}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    move-result-object v7

    .line 125
    invoke-virtual {v7, v6}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->setImage(Lru/rocketbank/core/network/model/ShopImage;)V

    .line 126
    invoke-virtual {v6}, Lru/rocketbank/core/network/model/ShopImage;->getColor()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 127
    iget-object v8, v7, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->viewColor:Landroid/view/View;

    invoke-virtual {v6}, Lru/rocketbank/core/network/model/ShopImage;->getColor()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    if-nez v9, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    invoke-static {v9}, Landroid/arch/lifecycle/MethodCallsLogger;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    :cond_3
    iget-object v8, v7, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v9, "imageBinding.progressBar"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    const-string v9, "$receiver"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    move-object v8, p0

    check-cast v8, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    .line 131
    invoke-virtual {v6}, Lru/rocketbank/core/network/model/ShopImage;->getImage_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    .line 132
    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    .line 133
    invoke-virtual {v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    .line 134
    new-instance v8, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$imageViews$1$1;

    invoke-direct {v8, v7}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$imageViews$1$1;-><init>(Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;)V

    check-cast v8, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    .line 146
    iget-object v8, v7, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 147
    new-instance v6, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    new-instance v8, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    const-string v9, "imageBinding"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->getRoot()Landroid/view/View;

    move-result-object v9

    const-string v10, "imageBinding.root"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lru/rocketbank/r2d2/R$id;->child:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const-string v10, "imageBinding.root.child"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/view/View;

    invoke-direct {v8, p0, v9}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Landroid/view/View;)V

    check-cast v8, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v6, v1, v8}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;-><init>(Landroid/content/Context;Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;)V

    .line 148
    invoke-virtual {v6, v3}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 149
    invoke-virtual {v7}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->getRoot()Landroid/view/View;

    move-result-object v8

    const-string v9, "imageBinding.root"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v9, Lru/rocketbank/r2d2/R$id;->child:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    new-instance v9, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$imageViews$1$2;

    invoke-direct {v9, v6}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$imageViews$1$2;-><init>(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V

    check-cast v9, Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    invoke-virtual {v7}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 371
    :cond_4
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    .line 373
    new-array v0, v4, [Landroid/view/View;

    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast v0, [Landroid/view/View;

    goto :goto_2

    :cond_6
    move-object v0, v2

    .line 152
    :goto_2
    sget v5, Lru/rocketbank/r2d2/R$id;->viewPager:I

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    const-string v6, "viewPager"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lru/rocketbank/core/widgets/ViewPagerAdapter;

    if-nez v0, :cond_7

    .line 375
    new-array v7, v4, [Landroid/view/View;

    goto :goto_3

    :cond_7
    move-object v7, v0

    .line 152
    :goto_3
    invoke-direct {v6, v7}, Lru/rocketbank/core/widgets/ViewPagerAdapter;-><init>([Landroid/view/View;)V

    check-cast v6, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 153
    sget v5, Lru/rocketbank/r2d2/R$id;->pageIndicator:I

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

    sget v6, Lru/rocketbank/r2d2/R$id;->viewPager:I

    invoke-virtual {p0, v6}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 154
    sget v5, Lru/rocketbank/r2d2/R$id;->pageIndicator:I

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

    const-string v6, "pageIndicator"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    array-length v0, v0

    goto :goto_4

    :cond_8
    move v0, v4

    :goto_4
    const/16 v6, 0x8

    if-le v0, v3, :cond_9

    move v0, v4

    goto :goto_5

    :cond_9
    move v0, v6

    :goto_5
    invoke-virtual {v5, v0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 156
    sget v0, Lru/rocketbank/r2d2/R$id;->fab:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    new-instance v5, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$1;

    invoke-direct {v5, p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$1;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Lru/rocketbank/core/model/shop/ShopItem;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lru/rocketbank/r2d2/R$id;->fab:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 159
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPrice_replacement()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move v0, v4

    goto :goto_7

    :cond_b
    :goto_6
    move v0, v3

    :goto_7
    if-eqz v0, :cond_16

    .line 160
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move-object v0, v2

    :goto_9
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    :cond_e
    move v0, v4

    .line 161
    :goto_a
    invoke-static {v1, v0}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->calculateNumOfColumns(Landroid/content/Context;I)I

    move-result v0

    .line 163
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getSizes()Ljava/util/List;

    move-result-object v5

    const v7, 0x7f0c01aa

    if-eqz v5, :cond_12

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getSizes()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_b

    :cond_f
    move v5, v4

    :goto_b
    if-le v5, v3, :cond_12

    .line 164
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lru/rocketbank/r2d2/R$id;->attributes:I

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v5, "sizes"

    .line 165
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lru/rocketbank/r2d2/R$id;->title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v8, "sizes.title"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x7f11041e

    invoke-virtual {p0, v8}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v5, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    const-string v8, "sizes.recyclerView"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v8, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 167
    new-instance v5, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getSizes()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    new-instance v9, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$2;

    invoke-direct {v9, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$2;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, v8, v9}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 168
    sget v8, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    const-string v9, "sizes.recyclerView"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v5

    check-cast v9, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 169
    sget v8, Lru/rocketbank/r2d2/R$id;->buttonQuestion:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    const-string v9, "sizes.buttonQuestion"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getSizes_table_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    move v6, v4

    :cond_11
    invoke-virtual {v8, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 170
    sget v6, Lru/rocketbank/r2d2/R$id;->buttonQuestion:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    new-instance v8, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$3;

    invoke-direct {v8, p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$3;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Lru/rocketbank/core/model/shop/ShopItem;)V

    check-cast v8, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v6, Lru/rocketbank/r2d2/R$id;->attributes:I

    invoke-virtual {p0, v6}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v2, v5

    .line 174
    :cond_12
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getColors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getColors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_c

    :cond_13
    move v5, v4

    :goto_c
    if-le v5, v3, :cond_16

    .line 175
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lru/rocketbank/r2d2/R$id;->attributes:I

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "colors"

    .line 176
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lru/rocketbank/r2d2/R$id;->title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v5, "colors.title"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f110412

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    sget v4, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    const-string v5, "colors.recyclerView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v5, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 178
    new-instance v0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getColors()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    new-instance v4, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$storeColorAdapter$1;

    invoke-direct {v4, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$storeColorAdapter$1;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v4}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 179
    sget v1, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const-string v4, "colors.recyclerView"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz v2, :cond_15

    .line 180
    new-instance v1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;

    invoke-direct {v1, p0, p1, v3, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$4;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Lru/rocketbank/core/model/shop/ShopItem;Landroid/view/View;Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;->setOnCheckChanged(Lkotlin/jvm/functions/Function1;)V

    .line 191
    :cond_15
    sget p1, Lru/rocketbank/r2d2/R$id;->attributes:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->createPresenter()Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;
    .locals 2

    .line 71
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "faed860e-dcfe-4803-b575-56c6a81319b2"

    const-class v1, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/lang/String;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    if-nez v0, :cond_0

    const-string v1, "scaleDetector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final getOnScale()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->onScale:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnScaleEnd()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->onScaleEnd:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getScaleDetector()Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;
    .locals 2

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    if-nez v0, :cond_0

    const-string v1, "scaleDetector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final hideAddToCartButton()V
    .locals 1

    .line 207
    sget v0, Lru/rocketbank/r2d2/R$id;->fab:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c005b

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026ut.activity_shop_details)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    .line 78
    sget p1, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/shop/ShopViewInterface;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsPresenter;->setView(Lru/rocketbank/r2d2/shop/ShopViewInterface;)V

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    :cond_0
    sget p1, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f060254

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 82
    sget p1, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    const-string v2, "toolbar"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v2, "toolbar.background"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const p1, 0x7f11017e

    .line 83
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->setTitle(I)V

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070176

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->flexibleSpaceImageHeight:I

    .line 85
    sget p1, Lru/rocketbank/r2d2/R$id;->observableScrollView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;

    move-object v3, p0

    check-cast v3, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {p1, v3}, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "intent"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->showItem(Landroid/content/Intent;)V

    .line 88
    new-instance p1, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    new-instance v3, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreate$1;

    invoke-direct {v3, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)V

    check-cast v3, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p1, v1, v3}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;-><init>(Landroid/content/Context;Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    if-nez p1, :cond_1

    const-string v1, "scaleDetector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 102
    invoke-direct {p0, v2}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->showBlockingView(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 253
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "getIntent()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->showItem(Landroid/content/Intent;)V

    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 1

    .line 214
    iget p2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->flexibleSpaceImageHeight:I

    iget p3, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->actionBarSize:I

    const/4 v0, 0x2

    mul-int/2addr v0, p3

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getStatusBarHeight()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p1, p2

    const/4 p2, 0x0

    .line 1042
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 227
    sget p2, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    const-string p3, "toolbar"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string p3, "toolbar.background"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public final setOnScale(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->onScale:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnScaleEnd(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->onScaleEnd:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setScaleDetector(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    return-void
.end method

.method public final showAddToCartButton()V
    .locals 1

    .line 203
    sget v0, Lru/rocketbank/r2d2/R$id;->fab:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    return-void
.end method

.method public final showAddToCartMessage()V
    .locals 3

    .line 197
    sget v0, Lru/rocketbank/r2d2/R$id;->content:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    const v1, 0x7f11024c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 198
    new-instance v1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showAddToCartMessage$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showAddToCartMessage$1;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    const v2, 0x7f110212

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public final showCart()V
    .locals 2

    .line 210
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity;->Companion:Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/shop/cart/ShopCartActivity$Companion;->startActivity(Landroid/content/Context;)V

    return-void
.end method
