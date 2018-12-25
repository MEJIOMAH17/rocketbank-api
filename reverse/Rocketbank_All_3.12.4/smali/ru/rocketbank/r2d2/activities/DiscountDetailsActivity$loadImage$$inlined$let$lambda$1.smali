.class public final Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "DiscountDetailsActivity.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->loadImage(Ljava/lang/String;)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $link$inlined:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;->$link$inlined:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 113
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

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
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final onResourceReady(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)Z"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getImageView$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->changeToolbar(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .line 113
    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$loadImage$$inlined$let$lambda$1;->onResourceReady(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method
