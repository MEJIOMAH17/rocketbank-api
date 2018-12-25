.class public final Lru/rocketbank/core/network/api/AndroidPayApi$DefaultImpls;
.super Ljava/lang/Object;
.source "AndroidPayApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/api/AndroidPayApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static bridge synthetic getOpcAndAddress$default(Lru/rocketbank/core/network/api/AndroidPayApi;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lrx/Observable;
    .locals 0
    .annotation runtime Lretrofit2/http/GET;
        value = "androidpay/tokens/{android_card_token}"
    .end annotation

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getOpcAndAddress"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-interface {p0, p1, p2}, Lru/rocketbank/core/network/api/AndroidPayApi;->getOpcAndAddress(Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
