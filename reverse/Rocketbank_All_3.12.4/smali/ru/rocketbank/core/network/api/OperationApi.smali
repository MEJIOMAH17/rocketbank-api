.class public interface abstract Lru/rocketbank/core/network/api/OperationApi;
.super Ljava/lang/Object;
.source "OperationApi.java"


# virtual methods
.method public abstract cancelFriendMoney(JLru/rocketbank/core/model/TokenRequestData;)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lru/rocketbank/core/model/TokenRequestData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lru/rocketbank/core/model/TokenRequestData;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseContainerData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "friend_transfers/{id}/cancel"
    .end annotation
.end method

.method public abstract comment(JLjava/lang/String;)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "operationId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "operation[comment]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "operations/{operationId}/comment"
    .end annotation
.end method

.method public abstract confirmTransferToSaveAccount(J)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "operations/{id}/transfer_to_safe_account"
    .end annotation
.end method

.method public abstract declineFriendMoney(JLru/rocketbank/core/model/TokenRequestData;)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lru/rocketbank/core/model/TokenRequestData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lru/rocketbank/core/model/TokenRequestData;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseContainerData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "friend_transfers/{id}/decline"
    .end annotation
.end method

.method public abstract getContext(J)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/ContextResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "operations/{id}/context"
    .end annotation
.end method

.method public abstract getFeed(Ljava/lang/String;II)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/NanoFeedResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "operations/sexy_feed"
    .end annotation
.end method

.method public abstract getSafeAccountOperations(Ljava/lang/String;II)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "accountToken"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/OperationsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "accounts/{accountToken}/feed"
    .end annotation
.end method

.method public abstract merchantAnalytics(Ljava/lang/Long;)Lrx/Observable;
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Path;
            value = "metchantId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MerchantAnalytics;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "merchants/{metchantId}"
    .end annotation
.end method

.method public abstract operations(ILjava/lang/String;Ljava/lang/Long;)Lrx/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tag"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "merchant_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/operations/OperationsRequestResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "operations/"
    .end annotation
.end method

.method public abstract refillMoney(Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;)Lrx/Observable;
    .param p1    # Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "friend_transfers/income"
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;II)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/response/OperationsSearchResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "operations/search"
    .end annotation
.end method

.method public abstract sendCoordinates(JLru/rocketbank/core/network/model/CoordinatesBody;)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "operationId"
        .end annotation
    .end param
    .param p3    # Lru/rocketbank/core/network/model/CoordinatesBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lru/rocketbank/core/network/model/CoordinatesBody;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/ResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "operations/{operationId}/coordinates"
    .end annotation
.end method

.method public abstract sendFriendMoney(JLru/rocketbank/core/model/TokenRequestData;)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lru/rocketbank/core/model/TokenRequestData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lru/rocketbank/core/model/TokenRequestData;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseContainerData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "friend_transfers/{id}/accept"
    .end annotation
.end method

.method public abstract sendMoney(Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;)Lrx/Observable;
    .param p1    # Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "friend_transfers"
    .end annotation
.end method

.method public abstract sendMonthCashBack(Lru/rocketbank/core/model/dto/MonthCashBackModel;)Lrx/Observable;
    .param p1    # Lru/rocketbank/core/model/dto/MonthCashBackModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/dto/MonthCashBackModel;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/Empty;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "month_cash_backs/apply"
    .end annotation
.end method

.method public abstract stash(JLjava/lang/String;)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "operations/{id}/stash"
    .end annotation
.end method

.method public abstract tagAnalytics(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "tag"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/TagAnalytics;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tags/{tag}"
    .end annotation
.end method
