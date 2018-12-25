.class public final Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShopFeedViewHolder.kt"


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

.field private final onItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/ShopListItemBinding;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/databinding/ShopListItemBinding;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 6

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->setItem(Lru/rocketbank/core/model/shop/ShopItem;)V

    .line 29
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getPromoTextFront()Z

    move-result v0

    .line 30
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewPromo:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const-string v2, "binding.textViewPromo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 31
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->imageView:Landroid/widget/ImageView;

    const-string v3, "binding.imageView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 32
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    const-string v4, "binding.root"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lru/rocketbank/r2d2/R$id;->content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout;

    const-string v4, "binding.root.content"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    new-array v5, v4, [I

    .line 28
    invoke-static {v0, v1, v2, v3, v5}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->bringPromoText(ZLandroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/R$id;->progressBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 36
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textViewAmount:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v3, "binding.textViewAmount"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-static {v0, p1, v4, v5, v3}, Lru/rocketbank/r2d2/shop/ShopUtilsKt;->createShopItemAmountText$default(Landroid/content/Context;Lru/rocketbank/core/model/shop/ShopItem;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    new-instance v5, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$1;

    invoke-direct {v5, p0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$1;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;Lru/rocketbank/core/model/shop/ShopItem;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "progressBar"

    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    const-string v5, "$receiver"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 41
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getImage()Lru/rocketbank/core/network/model/ShopImage;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/ShopImage;->getImage_url()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 42
    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 44
    new-instance v4, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$2;

    invoke-direct {v4, v1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$2;-><init>(Landroid/widget/ProgressBar;)V

    check-cast v4, Lcom/bumptech/glide/request/RequestListener;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 58
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/ShopItem;->getImage()Lru/rocketbank/core/network/model/ShopImage;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/ShopImage;->getTexture_url()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;Landroid/content/Context;)V

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/ShopListItemBinding;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->binding:Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    return-object v0
.end method

.method public final getOnItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
