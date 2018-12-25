.class public Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "PushViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder\n*L\n1#1,99:1\n*E\n"
.end annotation


# instance fields
.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private final feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

.field private mainAction:Ljava/lang/String;

.field private onCancelAction:Ljava/lang/Runnable;

.field private onOkAction:Ljava/lang/Runnable;

.field private final pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;


# direct methods
.method public constructor <init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V
    .locals 2

    const-string v0, "cropCircleTransformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushBinding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p3, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->root:Landroid/widget/LinearLayout;

    const-string v1, "pushBinding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    .line 24
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mainAction:Lru/rocketbank/core/widgets/RocketTextView;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final getPushBinding()Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09003b

    if-eq p1, v0, :cond_4

    const v0, 0x7f09022a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->onOkAction:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 78
    sget-object p1, Lru/rocketbank/r2d2/root/feed/Actions;->INSTANCE:Lru/rocketbank/r2d2/root/feed/Actions;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->mainAction:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/root/feed/Actions;->performAction(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mainAction:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->onOkAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 82
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->onCancelAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->additionalAction:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->onCancelAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final setButtons(Z)V
    .locals 2

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->buttons:Landroid/widget/LinearLayout;

    const-string v1, "pushBinding.buttons"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final setCancelAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->onCancelAction:Ljava/lang/Runnable;

    .line 94
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->additionalAction:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "pushBinding.additionalAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->additionalAction:Lru/rocketbank/core/widgets/RocketTextView;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->additionalAction:Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "pushBinding.additionalAction"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 4

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->cardBody:Landroid/support/v7/widget/CardView;

    new-instance v1, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->cardBody:Landroid/support/v7/widget/CardView;

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->feedAdapter:Lru/rocketbank/r2d2/root/feed/FeedAdapter;

    check-cast v3, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    invoke-direct {v1, v2, p1, v3}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V

    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setImage(Ljava/lang/String;)V
    .locals 5

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->image:Landroid/widget/ImageView;

    const-string v0, "pushBinding.image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->image:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->image:Landroid/widget/ImageView;

    const-string v3, "pushBinding.image"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 57
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    new-array v0, v1, [Lcom/bumptech/glide/load/Transformation;

    .line 61
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v1, Lcom/bumptech/glide/load/Transformation;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final setMainAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ref"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mainAction:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "pushBinding.mainAction"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->mainAction:Ljava/lang/String;

    return-void
.end method

.method public final setOkOnAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->mainAction:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "pushBinding.mainAction"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->onOkAction:Ljava/lang/Runnable;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 8

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->cardBody:Landroid/support/v7/widget/CardView;

    const-string v1, "pushBinding.cardBody"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->body:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "pushBinding.body"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u0452"

    const-string v4, "\u20bd"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 36
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->body:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "pushBinding.body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 3

    .line 41
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "pushBinding.title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 44
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "pushBinding.title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->pushBinding:Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "pushBinding.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
