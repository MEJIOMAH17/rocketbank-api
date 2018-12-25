.class public final Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "RxSPay"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spay error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lru/rocketbank/core/pay/samsung/SPayErrorCode;->INSTANCE:Lru/rocketbank/core/pay/samsung/SPayErrorCode;

    invoke-static {p1}, Lru/rocketbank/core/pay/samsung/SPayErrorCode;->getErrorCodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v1, Lru/rocketbank/core/pay/samsung/SamsungPayException;

    invoke-direct {v1, p1, p2}, Lru/rocketbank/core/pay/samsung/SamsungPayException;-><init>(ILandroid/os/Bundle;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(ILcom/samsung/android/sdk/samsungpay/v2/card/Card;)V
    .locals 3

    const-string v0, "card"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v1, Lru/rocketbank/core/pay/samsung/AddCardResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lru/rocketbank/core/pay/samsung/AddCardResult;-><init>(ILcom/samsung/android/sdk/samsungpay/v2/card/Card;B)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$addCard$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
