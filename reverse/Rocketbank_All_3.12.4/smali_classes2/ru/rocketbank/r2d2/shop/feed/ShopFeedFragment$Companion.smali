.class public final Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$Companion;
.super Ljava/lang/Object;
.source "ShopFeedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->access$getItems$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->access$setItems$cp(Ljava/util/List;)V

    return-void
.end method
