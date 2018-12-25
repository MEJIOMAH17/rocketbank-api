.class public final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;
.super Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;
.source "OutgoingSticker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutgoingSticker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutgoingSticker.kt\nru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker\n*L\n1#1,83:1\n*E\n"
.end annotation


# instance fields
.field private chatMessage:Lru/rocketbank/core/model/message/MessageIn;

.field private final heatBeatLoader:Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;

.field private final retryView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final stickerView:Landroid/widget/ImageView;

.field private final target:Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryMessageListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    const p1, 0x7f090360

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->stickerView:Landroid/widget/ImageView;

    const p1, 0x7f090225

    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketHeartBeatlLoader"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->heatBeatLoader:Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;

    const p1, 0x7f0902e2

    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;

    invoke-direct {p2, p0, p3}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$1;-><init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 37
    new-instance p1, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->stickerView:Landroid/widget/ImageView;

    invoke-direct {p1, p0, p2}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;-><init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;Landroid/widget/ImageView;)V

    check-cast p1, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->target:Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 4

    const-string v0, "chatMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->stickerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->heatBeatLoader:Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->stickerView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 72
    :goto_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/message/StickerAttachment;

    if-eqz p1, :cond_5

    .line 74
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/StickerAttachment;->getSticker()Lru/rocketbank/core/model/message/Sticker;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/Sticker;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_4

    .line 76
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->target:Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_3
    return-void

    :cond_4
    return-void

    :cond_5
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 53
    invoke-super {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->clear()V

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->stickerView:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->stickerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getChatMessage()Lru/rocketbank/core/model/message/MessageIn;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-object v0
.end method

.method public final getHeatBeatLoader()Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->heatBeatLoader:Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;

    return-object v0
.end method

.method public final getRetryView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->retryView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final getStickerView()Landroid/widget/ImageView;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->stickerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTarget()Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->target:Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;

    return-object v0
.end method

.method public final setChatMessage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method
