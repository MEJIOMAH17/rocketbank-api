.class public Lru/rocketbank/r2d2/utils/BindingUtils;
.super Ljava/lang/Object;
.source "BindingUtils.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:tint"
            method = "setImageTintList"
            type = Landroid/widget/ImageView;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "bitmap"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static colorCircle(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "colorCircle"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->createColorCircle(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static imageUrl(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "imageUrl"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static imageUrlGif(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "imageUrlGif"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static setImageViewResource(Landroid/widget/ImageView;I)V
    .locals 0
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "srcRes"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static setImageViewTint(Landroid/widget/ImageView;I)V
    .locals 2
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:tint"
        }
    .end annotation

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 80
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public static textAmount(Lru/rocketbank/core/widgets/RocketTextView;II)V
    .locals 0
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "textAmount"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils;->amountAnimation(Lru/rocketbank/core/widgets/RocketTextView;II)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static textAmountRocket(Lru/rocketbank/core/widgets/RocketTextView;DD)V
    .locals 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "textAmountRocket"
        }
    .end annotation

    cmpl-double v0, p1, p3

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->amountAnimation(Lru/rocketbank/core/widgets/RocketTextView;DD)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static url(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "imageUrlRound"
        }
    .end annotation

    .line 37
    new-instance v0, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, v0}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    return-void
.end method
