.class public final Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "ChosenMonthCashBackViewHolder.kt"


# instance fields
.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private currentText:Ljava/lang/String;

.field private final itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;


# direct methods
.method public constructor <init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;)V
    .locals 2

    const-string v0, "cropCircleTransformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p2, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->root:Landroid/widget/LinearLayout;

    const-string v1, "itemBinding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    return-void
.end method

.method private final loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 30
    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 31
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v1, Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-object v0
.end method

.method public final getCurrentText()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->currentText:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemBinding()Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    return-object v0
.end method

.method public final setCurrentText(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->currentText:Ljava/lang/String;

    return-void
.end method

.method public final setMerchantOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantImageViewOne:Landroid/widget/ImageView;

    const-string v1, "itemBinding.merchantImageViewOne"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 16
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantNameOne:Landroid/widget/TextView;

    const-string v0, "itemBinding.merchantNameOne"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMerchantThree(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantImageViewThree:Landroid/widget/ImageView;

    const-string v1, "itemBinding.merchantImageViewThree"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantNameThree:Landroid/widget/TextView;

    const-string v0, "itemBinding.merchantNameThree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMerchantTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantImageViewTwo:Landroid/widget/ImageView;

    const-string v1, "itemBinding.merchantImageViewTwo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->merchantNameTwo:Landroid/widget/TextView;

    const-string v0, "itemBinding.merchantNameTwo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->currentText:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->itemBinding:Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->title:Landroid/widget/TextView;

    const-string v1, "itemBinding.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
