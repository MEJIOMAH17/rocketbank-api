.class public interface abstract Lru/rocketbank/core/network/api/RegistrationApi;
.super Ljava/lang/Object;
.source "RegistrationApi.java"


# virtual methods
.method public abstract openPrivacy()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/PrivacyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "open_privacy"
    .end annotation
.end method

.method public abstract privacy()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/PrivacyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "privacy"
    .end annotation
.end method

.method public abstract registration(Ljava/lang/String;Lru/rocketbank/core/model/RegistrationForm;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lru/rocketbank/core/model/RegistrationForm;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/model/RegistrationForm;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "emails/{token}/form"
    .end annotation
.end method

.method public abstract uploadImage(Lokhttp3/MultipartBody$Part;Z)Lrx/Observable;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Part;
            value = "public"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            "Z)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/UploadImageResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "images"
    .end annotation
.end method

.method public abstract uploadNewPassportImages(Lru/rocketbank/core/network/model/new_passport/NewPassportBody;)Lrx/Observable;
    .param p1    # Lru/rocketbank/core/network/model/new_passport/NewPassportBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/new_passport/NewPassportBody;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "photos/new_passport"
    .end annotation
.end method
