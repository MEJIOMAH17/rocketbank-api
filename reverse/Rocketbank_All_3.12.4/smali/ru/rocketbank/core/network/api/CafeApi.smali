.class public interface abstract Lru/rocketbank/core/network/api/CafeApi;
.super Ljava/lang/Object;
.source "CafeApi.kt"


# virtual methods
.method public abstract refillMoney(Lru/rocketbank/core/network/model/cafe/CafeRefillBody;)Lrx/Observable;
    .param p1    # Lru/rocketbank/core/network/model/cafe/CafeRefillBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/cafe/CafeRefillBody;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/cafe/Response<",
            "Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "kitchen"
    .end annotation
.end method
