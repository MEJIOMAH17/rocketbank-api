.class final Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;
.super Ljava/lang/Object;
.source "UiTapAndPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiTapAndPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiTapAndPay.kt\nru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1\n*L\n1#1,110:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $client:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 5

    .line 48
    check-cast p1, Lrx/Subscriber;

    .line 1050
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/identity/intents/model/UserAddress;->newBuilder()Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;

    move-result-object v0

    .line 1051
    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;

    move-result-object v0

    .line 1052
    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;

    move-result-object v0

    .line 1053
    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$postalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;

    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Lcom/google/android/gms/identity/intents/model/UserAddress$Builder;->build()Lcom/google/android/gms/identity/intents/model/UserAddress;

    move-result-object v0

    .line 1056
    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$opc:Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 1057
    new-instance v2, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;-><init>()V

    .line 1058
    invoke-virtual {v2, v1}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->setOpaquePaymentCard([B)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 1059
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->setTokenServiceProvider(I)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;

    move-result-object v1

    .line 1060
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->setNetwork(I)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;

    move-result-object v1

    .line 1061
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->setUserAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;

    move-result-object v0

    .line 1062
    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$lastDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->setLastDigits(Ljava/lang/String;)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;

    move-result-object v0

    .line 1063
    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$cardText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;->build()Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;

    move-result-object v0

    .line 1066
    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay;

    invoke-virtual {v1}, Lru/rocketbank/core/pay/google/UiTapAndPay;->getTapAndPay()Lcom/google/android/gms/tapandpay/TapAndPay;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;

    iget-object v3, v3, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$activity:Landroid/app/Activity;

    const/16 v4, 0x27ff

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tapandpay/TapAndPay;->pushTokenize(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;I)V

    .line 1068
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1069
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1071
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
