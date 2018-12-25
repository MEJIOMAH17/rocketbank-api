.class public final Lru/rocketbank/core/network/api/YandexMapApi$DefaultImpls;
.super Ljava/lang/Object;
.source "YandexMapApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/api/YandexMapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static bridge synthetic getAddressByCoordinates$default(Lru/rocketbank/core/network/api/YandexMapApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lrx/Observable;
    .locals 0
    .annotation runtime Lretrofit2/http/GET;
        value = "1.x/"
    .end annotation

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAddressByCoordinates"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    const-string p1, "json"

    .line 15
    :cond_1
    invoke-interface {p0, p1, p2}, Lru/rocketbank/core/network/api/YandexMapApi;->getAddressByCoordinates(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getAddressesByString$default(Lru/rocketbank/core/network/api/YandexMapApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lrx/Observable;
    .locals 0
    .annotation runtime Lretrofit2/http/GET;
        value = "1.x/"
    .end annotation

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAddressesByString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    const-string p1, "json"

    .line 18
    :cond_1
    invoke-interface {p0, p1, p2}, Lru/rocketbank/core/network/api/YandexMapApi;->getAddressesByString(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
