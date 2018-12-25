.class final Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/samsung/RxSPay;->addCard(Ljava/lang/String;)Lrx/Observable;
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
    value = "SMAP\nRxSPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxSPay.kt\nru/rocketbank/core/pay/samsung/RxSPay$addCard$1\n*L\n1#1,185:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $payload:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/core/pay/samsung/RxSPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/samsung/RxSPay;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    iput-object p2, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;->$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 4

    .line 44
    check-cast p1, Lrx/Subscriber;

    .line 1045
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;->$payload:Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    const-string v1, "base64Bytes"

    .line 1046
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1048
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "provisionPayload"

    .line 1049
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    new-instance v1, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;

    iget-object v2, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v2}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getCardType$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v3}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getTsp$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1052
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object v2, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v2}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getContext$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v3}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getPartnerInfo$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V

    .line 1054
    new-instance v2, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1$1;

    invoke-direct {v2, p1}, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1$1;-><init>(Lrx/Subscriber;)V

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->addCard(Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;)V

    return-void
.end method
