.class public final Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "AdsViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private discountOperation:Lru/rocketbank/core/model/discounts/Discount;

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FeedItemAdsBinding;)V
    .locals 1

    const-string v0, "feedItemAdsBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemAdsBinding;->root:Landroid/widget/LinearLayout;

    const-string v0, "feedItemAdsBinding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->imageView:Landroid/widget/ImageView;

    .line 19
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->imageView:Landroid/widget/ImageView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->Companion:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->discountOperation:Lru/rocketbank/core/model/discounts/Discount;

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/discounts/Discount;)V

    return-void
.end method

.method public final setAds(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final setDiscount(Lru/rocketbank/core/model/discounts/Discount;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->discountOperation:Lru/rocketbank/core/model/discounts/Discount;

    return-void
.end method
