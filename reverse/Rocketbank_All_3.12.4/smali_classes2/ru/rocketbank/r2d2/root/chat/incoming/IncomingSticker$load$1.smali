.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker$load$1;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "IncomingSticker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker$load$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingSticker;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
