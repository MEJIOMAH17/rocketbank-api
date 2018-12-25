.class public final Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/card/GetCardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxSPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxSPay.kt\nru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1\n*L\n1#1,185:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILandroid/os/Bundle;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v1, Lru/rocketbank/core/pay/samsung/SamsungPayException;

    invoke-direct {v1, p1, p2}, Lru/rocketbank/core/pay/samsung/SamsungPayException;-><init>(ILandroid/os/Bundle;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/samsungpay/v2/card/Card;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;->$subscriber:Lrx/Subscriber;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getCards$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
