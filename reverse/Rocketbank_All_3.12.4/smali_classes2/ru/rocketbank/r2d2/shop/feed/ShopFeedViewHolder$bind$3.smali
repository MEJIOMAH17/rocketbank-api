.class public final Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "ShopFeedViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->bind(Lru/rocketbank/core/model/shop/ShopItem;)V
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


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;->$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
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

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->getBinding()Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    move-result-object p2

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textureView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3$onResourceReady$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3$onResourceReady$1;-><init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;)V

    check-cast p2, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 58
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
