.class final Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/RxSPay;
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
    value = "SMAP\nRxSPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxSPay.kt\nru/rocketbank/core/pay/samsung/RxSPay$getCards$1\n*L\n1#1,185:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/pay/samsung/RxSPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/samsung/RxSPay;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 4

    .line 116
    check-cast p1, Lrx/Subscriber;

    .line 1117
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v1}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getContext$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v2}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getPartnerInfo$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsungpay/v2/PartnerInfo;)V

    .line 1118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "issuerName"

    .line 1119
    iget-object v3, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v3}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getIssuerName$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-instance v2, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;

    invoke-direct {v2, p1}, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;-><init>(Lrx/Subscriber;)V

    check-cast v2, Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManager;->getAllCards(Landroid/os/Bundle;Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;)V

    return-void
.end method
