.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;
.super Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;
.source "IncomingSticker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomingSticker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingSticker.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingSticker\n*L\n1#1,52:1\n*E\n"
.end annotation


# instance fields
.field private final stickerView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f090360

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->stickerView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/message/StickerAttachment;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->clear()V

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/StickerAttachment;->getSticker()Lru/rocketbank/core/model/message/Sticker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/Sticker;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->load(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 22
    invoke-super {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->clear()V

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->stickerView:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->stickerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final load(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 42
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 45
    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker$load$1;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->stickerView:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker$load$1;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;Landroid/widget/ImageView;)V

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
