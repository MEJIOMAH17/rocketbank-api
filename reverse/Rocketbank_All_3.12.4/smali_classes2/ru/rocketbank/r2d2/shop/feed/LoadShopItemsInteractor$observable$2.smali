.class final Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$2;
.super Ljava/lang/Object;
.source "LoadShopItemsInteractor.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->getObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$2;->this$0:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lru/rocketbank/core/network/model/ShopItemResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$2;->call(Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;
    .locals 2

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$2;->this$0:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->access$toShopItem(Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object p1

    return-object p1
.end method
