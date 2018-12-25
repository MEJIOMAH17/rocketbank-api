.class public interface abstract Lru/rocketbank/core/network/api/DeliveryApi;
.super Ljava/lang/Object;
.source "DeliveryApi.kt"


# virtual methods
.method public abstract getDelivery(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/delivery/DeliveryResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "deliveries/{token}"
    .end annotation
.end method

.method public abstract getTimesByDate(Ljava/lang/String;Lru/rocketbank/core/network/model/delivery/DeliveryBody;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lru/rocketbank/core/network/model/delivery/DeliveryBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/network/model/delivery/DeliveryBody<",
            "Lru/rocketbank/core/network/model/delivery/DeliveryDateBody;",
            ">;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/delivery/IntervalResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "deliveries/{token}/times"
    .end annotation
.end method

.method public abstract scheduleDelivery(Ljava/lang/String;Lru/rocketbank/core/network/model/delivery/DeliveryBody;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lru/rocketbank/core/network/model/delivery/DeliveryBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/network/model/delivery/DeliveryBody<",
            "Lru/rocketbank/core/network/model/delivery/ScheduleDateBody;",
            ">;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/delivery/DeliveryResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "deliveries/{token}/schedule"
    .end annotation
.end method

.method public abstract selectAddress(Ljava/lang/String;Lru/rocketbank/core/network/model/delivery/DeliveryBody;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lru/rocketbank/core/network/model/delivery/DeliveryBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/network/model/delivery/DeliveryBody<",
            "Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;",
            ">;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/delivery/DateResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "deliveries/{token}/address"
    .end annotation
.end method
