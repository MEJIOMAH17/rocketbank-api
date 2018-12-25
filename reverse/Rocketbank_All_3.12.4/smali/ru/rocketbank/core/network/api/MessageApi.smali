.class public interface abstract Lru/rocketbank/core/network/api/MessageApi;
.super Ljava/lang/Object;
.source "MessageApi.java"


# virtual methods
.method public abstract getPage(I)Lrx/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessagesResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "messages/collection"
    .end annotation
.end method

.method public abstract message(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "message[image_ids]"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Field;
            value = "message[operation_ids]"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "message[body]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "messages"
    .end annotation
.end method

.method public abstract sendLove(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/MessageResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "messages/love"
    .end annotation
.end method
