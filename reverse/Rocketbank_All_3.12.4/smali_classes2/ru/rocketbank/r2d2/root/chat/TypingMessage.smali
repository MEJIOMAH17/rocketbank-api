.class public final Lru/rocketbank/r2d2/root/chat/TypingMessage;
.super Lru/rocketbank/r2d2/root/chat/MessageViewHolder;
.source "TypingMessage.kt"


# instance fields
.field private final animation:Landroid/widget/ImageView;

.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private final iconView:Landroid/widget/ImageView;

.field private final whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;


# direct methods
.method public constructor <init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Landroid/view/View;)V
    .locals 2

    const-string v0, "cropCircleTransformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    const p1, 0x7f090057

    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->animation:Landroid/widget/ImageView;

    const p1, 0x7f0901bf

    .line 21
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->iconView:Landroid/widget/ImageView;

    const p1, 0x7f090419

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    return-void
.end method


# virtual methods
.method public final binding(Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;)V
    .locals 1

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->animation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 29
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/TypingMessage;->setWho(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/TypingMessage;->setIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-object v0
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->iconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->iconView:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/TypingMessage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/TypingMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 52
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    .line 55
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final setWho(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setVisibility(I)V

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/TypingMessage;->whoView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
