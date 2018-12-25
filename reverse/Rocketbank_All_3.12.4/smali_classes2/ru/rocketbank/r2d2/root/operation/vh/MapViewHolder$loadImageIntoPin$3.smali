.class public final Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "MapViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->loadImageIntoPin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3\n*L\n1#1,210:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $px:F

.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    iput p2, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->$px:F

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    iget v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->$px:F

    iget v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->$px:F

    invoke-virtual {v0, p1, v1, v2}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->createPin(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->access$setPinBitmap$p(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;Landroid/graphics/Bitmap;)V

    .line 161
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->access$getOperation$p(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;)Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getLocation()Lru/rocketbank/core/model/dto/operations/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->this$0:Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    invoke-static {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->access$showLocation(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;Lru/rocketbank/core/model/dto/operations/Location;)V

    return-void

    :cond_1
    return-void
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 157
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
