.class public final Lru/rocketbank/core/network/model/ShopItemResponse;
.super Ljava/lang/Object;
.source "ShopItemResponse.kt"


# instance fields
.field private cart_image:Lru/rocketbank/core/network/model/ShopImage;

.field private description:Ljava/lang/String;

.field private feed_description:Ljava/lang/String;

.field private feed_image:Lru/rocketbank/core/network/model/ShopImage;

.field private feed_text_color:Ljava/lang/String;

.field private id:J

.field private info_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ShopImage;",
            ">;"
        }
    .end annotation
.end field

.field private price:Ljava/lang/Double;

.field private price_old:Ljava/lang/Double;

.field private price_replacement:Ljava/lang/String;

.field private promo_title:Ljava/lang/String;

.field private promo_title_color:Ljava/lang/String;

.field private promo_title_front:Z

.field private promo_title_opacity:Ljava/lang/Float;

.field private sizes_table_url:Ljava/lang/String;

.field private structure:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->id:J

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->title:Ljava/lang/String;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->description:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title_front:Z

    return-void
.end method


# virtual methods
.method public final getCart_image()Lru/rocketbank/core/network/model/ShopImage;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->cart_image:Lru/rocketbank/core/network/model/ShopImage;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeed_description()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->feed_description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeed_image()Lru/rocketbank/core/network/model/ShopImage;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->feed_image:Lru/rocketbank/core/network/model/ShopImage;

    return-object v0
.end method

.method public final getFeed_text_color()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->feed_text_color:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->id:J

    return-wide v0
.end method

.method public final getInfo_images()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ShopImage;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->info_images:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/Double;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPrice_old()Ljava/lang/Double;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->price_old:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPrice_replacement()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->price_replacement:Ljava/lang/String;

    return-object v0
.end method

.method public final getPromo_title()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title:Ljava/lang/String;

    return-object v0
.end method

.method public final getPromo_title_color()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title_color:Ljava/lang/String;

    return-object v0
.end method

.method public final getPromo_title_front()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title_front:Z

    return v0
.end method

.method public final getPromo_title_opacity()Ljava/lang/Float;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title_opacity:Ljava/lang/Float;

    return-object v0
.end method

.method public final getSizes_table_url()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->sizes_table_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getStructure()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->structure:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Variant;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->variants:Ljava/util/List;

    return-object v0
.end method

.method public final setCart_image(Lru/rocketbank/core/network/model/ShopImage;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->cart_image:Lru/rocketbank/core/network/model/ShopImage;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public final setFeed_description(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->feed_description:Ljava/lang/String;

    return-void
.end method

.method public final setFeed_image(Lru/rocketbank/core/network/model/ShopImage;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->feed_image:Lru/rocketbank/core/network/model/ShopImage;

    return-void
.end method

.method public final setFeed_text_color(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->feed_text_color:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->id:J

    return-void
.end method

.method public final setInfo_images(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ShopImage;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->info_images:Ljava/util/List;

    return-void
.end method

.method public final setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->price:Ljava/lang/Double;

    return-void
.end method

.method public final setPrice_old(Ljava/lang/Double;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->price_old:Ljava/lang/Double;

    return-void
.end method

.method public final setPrice_replacement(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->price_replacement:Ljava/lang/String;

    return-void
.end method

.method public final setPromo_title(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title:Ljava/lang/String;

    return-void
.end method

.method public final setPromo_title_color(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title_color:Ljava/lang/String;

    return-void
.end method

.method public final setPromo_title_front(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title_front:Z

    return-void
.end method

.method public final setPromo_title_opacity(Ljava/lang/Float;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->promo_title_opacity:Ljava/lang/Float;

    return-void
.end method

.method public final setSizes_table_url(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->sizes_table_url:Ljava/lang/String;

    return-void
.end method

.method public final setStructure(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->structure:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->title:Ljava/lang/String;

    return-void
.end method

.method public final setVariants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Variant;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/network/model/ShopItemResponse;->variants:Ljava/util/List;

    return-void
.end method
