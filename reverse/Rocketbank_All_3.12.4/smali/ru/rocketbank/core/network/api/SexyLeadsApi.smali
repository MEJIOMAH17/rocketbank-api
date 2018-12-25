.class public interface abstract Lru/rocketbank/core/network/api/SexyLeadsApi;
.super Ljava/lang/Object;
.source "SexyLeadsApi.kt"


# virtual methods
.method public abstract getStatus(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/StatusResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "leads/sexy_status"
    .end annotation
.end method
