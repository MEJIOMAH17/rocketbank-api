.class public interface abstract Lru/rocketbank/core/network/api/ShopApi;
.super Ljava/lang/Object;
.source "ShopApi.kt"


# virtual methods
.method public abstract items()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ShopItemResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "shop/items"
    .end annotation
.end method

.method public abstract order(Lru/rocketbank/core/model/shop/ShopOrder;)Lrx/Observable;
    .param p1    # Lru/rocketbank/core/model/shop/ShopOrder;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/shop/ShopOrder;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/shop/ShopOrderResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "shop/orders"
    .end annotation
.end method
