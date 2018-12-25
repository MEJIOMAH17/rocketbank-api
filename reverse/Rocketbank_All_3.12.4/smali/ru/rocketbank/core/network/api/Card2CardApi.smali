.class public interface abstract Lru/rocketbank/core/network/api/Card2CardApi;
.super Ljava/lang/Object;
.source "Card2CardApi.java"


# virtual methods
.method public abstract commission(D)Lrx/Observable;
    .param p1    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "amount"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/response/CommissionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "card2card/commission"
    .end annotation
.end method

.method public abstract commissionIncome(DLjava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .param p1    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "amount"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "number"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "linked_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/response/CommissionStringResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "card2card/income_commission"
    .end annotation
.end method

.method public abstract getOutComeCommission(DLjava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .param p1    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "amount"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "number"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "linked_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/response/CommissionStringResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "card2card/outcome_commission"
    .end annotation
.end method

.method public abstract refillFromCardMoney(DLru/rocketbank/core/network/model/CardBody;)Lrx/Observable;
    .param p1    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "amount"
        .end annotation
    .end param
    .param p3    # Lru/rocketbank/core/network/model/CardBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lru/rocketbank/core/network/model/CardBody;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/card/Card2CardRefillResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "card2card/refill"
    .end annotation
.end method

.method public abstract sendMoney(Lru/rocketbank/core/network/model/SendMoneyBody;)Lrx/Observable;
    .param p1    # Lru/rocketbank/core/network/model/SendMoneyBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/SendMoneyBody;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "card2card/transfer"
    .end annotation
.end method

.method public abstract status(I)Lrx/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/card/Card2CardStatusResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "card2card/status"
    .end annotation
.end method
