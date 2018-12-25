.class public final Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;
.super Ljava/lang/Object;
.source "OutgoingImage.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->loadHorizontal(Ljava/lang/String;IILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Ljava/lang/String;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 181
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result p1

    return p1
.end method

.method public final onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    const-string p1, "model"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->access$getImageData$p(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;)Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return p2
.end method

.method public final onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    const-string p4, "resource"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "model"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;->this$0:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;->access$getImageData$p(Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage;)Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/outgoing/binding/ImageData;->getProgressVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return p2
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .line 181
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingImage$loadHorizontal$drawableTypeRequest$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method
