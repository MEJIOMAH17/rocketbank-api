.class public final Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "DiscountDetailsActivity.kt"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;
.implements Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscountDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountDetailsActivity.kt\nru/rocketbank/r2d2/activities/DiscountDetailsActivity\n*L\n1#1,225:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;

.field private static final DISCOUNT:Ljava/lang/String; = "discount"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

.field private data:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

.field private discount:Lru/rocketbank/core/model/discounts/Discount;

.field private height:F

.field private imageView:Landroid/widget/ImageView;

.field private observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->Companion:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbarBackground:I

    return-void
.end method

.method public static final synthetic access$getArrow$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
    .locals 1

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    if-nez p0, :cond_0

    const-string v0, "arrow"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDISCOUNT$cp()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->DISCOUNT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getHeight$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)F
    .locals 0

    .line 41
    iget p0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->height:F

    return p0
.end method

.method public static final synthetic access$getImageView$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/widget/ImageView;
    .locals 1

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->imageView:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "imageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getObservableScrollView$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;
    .locals 1

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    if-nez p0, :cond_0

    const-string v0, "observableScrollView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getToolbar$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p0, :cond_0

    const-string v0, "toolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getToolbarBackground$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbarBackground:I

    return p0
.end method

.method public static final synthetic access$setArrow$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    return-void
.end method

.method public static final synthetic access$setHeight$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;F)V
    .locals 0

    .line 41
    iput p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->height:F

    return-void
.end method

.method public static final synthetic access$setImageView$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic access$setObservableScrollView$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    return-void
.end method

.method public static final synthetic access$setToolbar$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public static final synthetic access$setToolbarBackground$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;I)V
    .locals 0

    .line 41
    iput p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbarBackground:I

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final changeToolbar(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bmp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;-><init>(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)V

    check-cast v0, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final discountButtonClicked(Landroid/view/View;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const-string v1, "clipboard"

    .line 140
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, "promo"

    .line 141
    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->data:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    if-nez v3, :cond_1

    const-string v4, "data"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v3, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoCode:Landroid/databinding/ObservableField;

    invoke-virtual {v3}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 142
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f110109

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final linkClicked(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez p1, :cond_0

    const-string v0, "discount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Discount;->linkType:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez p1, :cond_1

    const-string v0, "discount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Discount;->linkType:Ljava/lang/String;

    const-string v0, "external_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez p1, :cond_3

    const-string v0, "discount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Discount;->linkType:Ljava/lang/String;

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 150
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v0, :cond_4

    const-string v1, "discount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/core/model/discounts/Discount;->link:Ljava/lang/String;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/Utils;->openAddress(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 148
    :cond_6
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v0, :cond_7

    const-string v1, "discount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v0, Lru/rocketbank/core/model/discounts/Discount;->link:Ljava/lang/String;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final loadImage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 109
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 113
    new-instance v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;Ljava/lang/String;)V

    check-cast v1, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    .line 133
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "imageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_1
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    .line 70
    invoke-super/range {p0 .. p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0c0039

    invoke-static {v2, v3}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    const-string v3, "DataBindingUtil.setConte\u2026ctivity_discount_details)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    iput-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->DISCOUNT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "intent.getParcelableExtra<Discount>(DISCOUNT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lru/rocketbank/core/model/discounts/Discount;

    iput-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    .line 74
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    if-nez v2, :cond_0

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->imageView:Landroid/widget/ImageView;

    const-string v3, "binding.imageView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->imageView:Landroid/widget/ImageView;

    .line 75
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    if-nez v2, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    const-string v3, "binding.observableScrollView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    .line 76
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    if-nez v2, :cond_2

    const-string v3, "observableScrollView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v3, v3}, Lru/rocketbank/r2d2/helpers/UIHelper;->setPadding(ZLandroid/view/View;ZZZ)V

    .line 77
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    if-nez v2, :cond_3

    const-string v5, "observableScrollView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v5, v1

    check-cast v5, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {v2, v5}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 78
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    if-nez v2, :cond_4

    const-string v5, "observableScrollView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance v5, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;

    invoke-direct {v5, v1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    .line 84
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    if-nez v2, :cond_5

    const-string v5, "binding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    move-object v5, v1

    check-cast v5, Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;

    invoke-virtual {v2, v5}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->setListener(Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;)V

    .line 86
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v2, :cond_6

    const-string v5, "discount"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v6, v2, Lru/rocketbank/core/model/discounts/Discount;->body:Ljava/lang/String;

    const-string v2, "discount.body"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "* "

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v5, :cond_7

    const-string v6, "discount"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v5, v5, Lru/rocketbank/core/model/discounts/Discount;->promoTitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f11010a

    invoke-virtual {v1, v5}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 88
    new-instance v2, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    .line 89
    iget-object v5, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v5, :cond_8

    const-string v6, "discount"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v5, v5, Lru/rocketbank/core/model/discounts/Discount;->name:Ljava/lang/String;

    const-string v6, "discount.name"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_9

    move v5, v4

    goto :goto_0

    :cond_9
    move v5, v3

    :goto_0
    if-eqz v5, :cond_b

    iget-object v5, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v5, :cond_a

    const-string v6, "discount"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v7, v5, Lru/rocketbank/core/model/discounts/Discount;->name:Ljava/lang/String;

    const-string v5, "discount.name"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "+"

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v13, v5

    goto :goto_2

    :cond_b
    iget-object v5, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v5, :cond_c

    const-string v6, "discount"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v5, v5, Lru/rocketbank/core/model/discounts/Discount;->shortTitle:Ljava/lang/String;

    goto :goto_1

    :goto_2
    const-string v5, "if (discount.name.isEmpt\u2026 else discount.shortTitle"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v5, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v5, :cond_d

    const-string v6, "discount"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object v5, v5, Lru/rocketbank/core/model/discounts/Discount;->linkTitle:Ljava/lang/String;

    const-string v6, "discount.linkTitle"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v6, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v6, :cond_e

    const-string v7, "discount"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v6, v6, Lru/rocketbank/core/model/discounts/Discount;->promoCode:Ljava/lang/String;

    .line 94
    iget-object v7, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v7, :cond_f

    const-string v8, "discount"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    iget-object v7, v7, Lru/rocketbank/core/model/discounts/Discount;->promoCode:Ljava/lang/String;

    if-eqz v7, :cond_10

    move/from16 v18, v4

    goto :goto_3

    :cond_10
    move/from16 v18, v3

    :goto_3
    move-object v12, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 88
    invoke-direct/range {v12 .. v18}, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->data:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    .line 96
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    if-nez v2, :cond_11

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object v3, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->data:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    if-nez v3, :cond_12

    const-string v4, "data"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/DiscountData;)V

    .line 98
    :try_start_0
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->imageView:Landroid/widget/ImageView;

    if-nez v2, :cond_13

    const-string v3, "imageView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v4, :cond_14

    const-string v5, "discount"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    iget-object v4, v4, Lru/rocketbank/core/model/discounts/Discount;->color:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 100
    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 103
    :goto_4
    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v2, :cond_15

    const-string v3, "discount"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    iget-object v2, v2, Lru/rocketbank/core/model/discounts/Discount;->mainLink:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, v1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v2, :cond_16

    const-string v3, "discount"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object v2, v2, Lru/rocketbank/core/model/discounts/Discount;->prewiewLink:Ljava/lang/String;

    :cond_17
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->loadImage(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->setupToolbar()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v0, :cond_0

    const-string v1, "discount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/core/model/discounts/Discount;->videoLink:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v0, :cond_1

    const-string v1, "discount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/core/model/discounts/Discount;->videoLink:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d000b

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v1

    .line 212
    :cond_2
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090407

    if-ne v0, v1, :cond_1

    .line 217
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v0, :cond_0

    const-string v1, "discount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/core/model/discounts/Discount;->videoLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/VideoActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 221
    :cond_1
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onScrollChanged(IZZ)V
    .locals 3

    .line 195
    iget p2, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->height:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->height:F

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 196
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->imageView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const-string p3, "imageView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->imageView:Landroid/widget/ImageView;

    if-nez p3, :cond_1

    const-string v0, "imageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 197
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_2

    const-string p3, "toolbar"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 199
    :cond_2
    iget p3, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbarBackground:I

    const/16 v1, 0xff

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 1054
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    const v0, 0xffffff

    and-int/2addr p3, v0

    add-int/2addr p2, p3

    .line 197
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public final setupToolbar()V
    .locals 3

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "binding.include!!.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_2

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, v1, v2}, Lru/rocketbank/r2d2/helpers/UIHelper;->setPadding(ZLandroid/view/View;ZZZ)V

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_3

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 157
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 158
    :cond_4
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_5

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 159
    new-instance v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_6

    const-string v2, "arrow"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setDirection$13462e()V

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_7

    const-string v2, "arrow"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    if-nez v0, :cond_8

    const-string v2, "arrow"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v0, :cond_9

    const-string v1, "discount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v0, Lru/rocketbank/core/model/discounts/Discount;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbarBackground:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :catch_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_a

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->arrow:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    if-nez v1, :cond_b

    const-string v2, "arrow"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->discount:Lru/rocketbank/core/model/discounts/Discount;

    if-nez v0, :cond_c

    const-string v1, "discount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v0, Lru/rocketbank/core/model/discounts/Discount;->shortTitle:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
