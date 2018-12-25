.class public Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;
.super Lru/rocketbank/r2d2/root/chat/MessageViewHolder;
.source "IncomingViewHolder.kt"


# instance fields
.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private final iconView:Landroid/widget/ImageView;

.field private final messageView:Landroid/widget/LinearLayout;

.field private permalimk:Ljava/lang/String;

.field private final statusView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0901bf

    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    const v0, 0x7f090419

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const v0, 0x7f090359

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->statusView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f09025f

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    .line 34
    new-instance p2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-direct {p2, p1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 36
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    invoke-static {p2}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;Landroid/content/Context;)V

    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 44
    invoke-super {p0}, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;->clear()V

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getPermalimk()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->permalimk:Ljava/lang/String;

    return-object v0
.end method

.method public final setDocumengGray(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f0800d8

    goto :goto_0

    :cond_0
    const v0, 0x7f0800d9

    .line 61
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 64
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0700cf

    .line 86
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->getDimen(I)I

    move-result v0

    .line 87
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 88
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 91
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    .line 92
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final setPermalimk(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->permalimk:Ljava/lang/String;

    return-void
.end method

.method public final setWhiteBubble(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f0802a3

    goto :goto_0

    :cond_0
    const v0, 0x7f0802a4

    .line 52
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 55
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->messageView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final setWho(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setVisibility(I)V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
