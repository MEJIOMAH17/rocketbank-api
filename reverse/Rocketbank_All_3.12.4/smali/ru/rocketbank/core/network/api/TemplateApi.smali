.class public interface abstract Lru/rocketbank/core/network/api/TemplateApi;
.super Ljava/lang/Object;
.source "TemplateApi.java"


# virtual methods
.method public abstract delete(I)Lrx/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "payment_templates/{id}"
    .end annotation
.end method

.method public abstract editTemplate(JLru/rocketbank/core/network/model/TemplateEditBody;)Lrx/Observable;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lru/rocketbank/core/network/model/TemplateEditBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lru/rocketbank/core/network/model/TemplateEditBody;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "payment_templates/{id}"
    .end annotation
.end method

.method public abstract getTemplatesPayments()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/transfers/PaymentTemplates;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "templates/payments/"
    .end annotation
.end method
