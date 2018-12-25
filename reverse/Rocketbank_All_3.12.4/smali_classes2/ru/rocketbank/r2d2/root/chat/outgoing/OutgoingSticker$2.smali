.class public final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "OutgoingSticker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;-><init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->getRetryView()Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->getStickerView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 41
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->getStickerView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker;->getHeatBeatLoader()Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketHeartBeatlLoader;->setVisibility(I)V

    return-void
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingSticker$2;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
