.class public interface abstract Lru/rocketbank/core/network/api/WidgetApi;
.super Ljava/lang/Object;
.source "WidgetApi.kt"


# virtual methods
.method public abstract getWidget()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/WidgetResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "widget"
    .end annotation
.end method
