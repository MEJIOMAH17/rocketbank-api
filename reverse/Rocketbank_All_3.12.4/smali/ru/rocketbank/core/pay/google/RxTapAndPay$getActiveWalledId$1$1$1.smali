.class final Lru/rocketbank/core/pay/google/RxTapAndPay$getActiveWalledId$1$1$1;
.super Ljava/lang/Object;
.source "RxTapAndPay.kt"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/RxTapAndPay$getActiveWalledId$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/tapandpay/TapAndPay$GetActiveWalletIdResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getActiveWalledId$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    .line 13
    check-cast p1, Lcom/google/android/gms/tapandpay/TapAndPay$GetActiveWalletIdResult;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    invoke-interface {p1}, Lcom/google/android/gms/tapandpay/TapAndPay$GetActiveWalletIdResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v1, "result.status"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    .line 1025
    iget-object v1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getActiveWalledId$1$1$1;->$subscriber:Lrx/Subscriber;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/tapandpay/TapAndPay$GetActiveWalletIdResult;->getActiveWalletId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1026
    iget-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getActiveWalledId$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
