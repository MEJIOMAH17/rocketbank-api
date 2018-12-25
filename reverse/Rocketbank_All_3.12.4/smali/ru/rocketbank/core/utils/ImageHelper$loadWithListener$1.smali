.class public final Lru/rocketbank/core/utils/ImageHelper$loadWithListener$1;
.super Ljava/lang/Object;
.source "ImageHelper.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/ImageHelper;->loadWithListener(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;)V
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
.field final synthetic $listener:Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lru/rocketbank/core/utils/ImageHelper$loadWithListener$1;->$listener:Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 32
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/utils/ImageHelper$loadWithListener$1;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

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

    .line 39
    iget-object p2, p0, Lru/rocketbank/core/utils/ImageHelper$loadWithListener$1;->$listener:Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p3, "glide \u00af\\_(\u30c4)_/\u00af"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;->onError(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
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

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lru/rocketbank/core/utils/ImageHelper$loadWithListener$1;->$listener:Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;

    invoke-interface {p2, p1}, Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;->onLoad(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .line 32
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/core/utils/ImageHelper$loadWithListener$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method
