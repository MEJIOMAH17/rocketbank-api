.class public interface abstract Lru/rocketbank/core/network/api/AnalyticsApi;
.super Ljava/lang/Object;
.source "AnalyticsApi.java"


# virtual methods
.method public abstract analytics(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "group"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "category_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to"
        .end annotation
    .end param
    .param p5    # [I
        .annotation runtime Lretrofit2/http/Query;
            value = "joints"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "analytics/{group}"
    .end annotation
.end method

.method public abstract analyticsOperations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "merchant_id"
        .end annotation
    .end param
    .param p4    # [I
        .annotation runtime Lretrofit2/http/Query;
            value = "joints"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsOperationsResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "analytics/operations"
    .end annotation
.end method

.method public abstract analyticsSummary(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to"
        .end annotation
    .end param
    .param p3    # [I
        .annotation runtime Lretrofit2/http/Query;
            value = "joints"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "analytics/summary"
    .end annotation
.end method

.method public abstract analyticsTags(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to"
        .end annotation
    .end param
    .param p3    # [I
        .annotation runtime Lretrofit2/http/Query;
            value = "joints"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "analytics/tags"
    .end annotation
.end method
