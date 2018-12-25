.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "IncomingImage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->createSimpleTarget()Lcom/bumptech/glide/request/target/SimpleTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomingImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingImage.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1\n*L\n1#1,121:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glideAnimation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 66
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->access$getImage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;)Lru/rocketbank/core/model/message/ImageAttachment;

    move-result-object p1

    const/16 p2, 0x64

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/ImageAttachment;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 67
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->access$getImage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;)Lru/rocketbank/core/model/message/ImageAttachment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getWidth()I

    move-result p2

    .line 69
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->access$getImage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;)Lru/rocketbank/core/model/message/ImageAttachment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-le p2, p1, :cond_3

    .line 73
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->access$loadHorizontal(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;Ljava/lang/String;)V

    return-void

    :cond_3
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 76
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;

    invoke-static {p2, v0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;->access$loadVertical(Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage;Ljava/lang/String;F)V

    :cond_4
    return-void
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingImage$createSimpleTarget$1;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
