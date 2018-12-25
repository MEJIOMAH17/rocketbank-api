.class final Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3$onResourceReady$1;
.super Ljava/lang/Object;
.source "ShopFeedViewHolder.kt"

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3$onResourceReady$1;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3$onResourceReady$1;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;

    iget-object v0, v0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder;->getBinding()Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;->textureView:Landroid/widget/ImageView;

    const-string v1, "binding.textureView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lru/rocketbank/r2d2/utils/MaterialUtils;->INSTANCE:Lru/rocketbank/r2d2/utils/MaterialUtils;

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3$onResourceReady$1;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;

    iget-object v1, v1, Lru/rocketbank/r2d2/shop/feed/ShopFeedViewHolder$bind$3;->$context:Landroid/content/Context;

    const v3, 0x7f060088

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lru/rocketbank/r2d2/utils/MaterialUtils;->createRipple(Landroid/support/v7/graphics/Palette;FFIZ)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
