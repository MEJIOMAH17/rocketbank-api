.class final Lru/rocketbank/core/pay/google/RxTapAndPay$getTokenStatus$1$1$1;
.super Ljava/lang/Object;
.source "RxTapAndPay.kt"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/RxTapAndPay$getTokenStatus$1$1;
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
        "Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getTokenStatus$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    .line 13
    check-cast p1, Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;

    const-string v0, "tokenResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    invoke-interface {p1}, Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v1, "tokenResult.status"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    invoke-interface {p1}, Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;->getTokenStatus()Lcom/google/android/gms/tapandpay/issuer/TokenStatus;

    move-result-object v0

    const-string v1, "tokenResult.tokenStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->getTokenState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1065
    sget-object v0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->OTHER:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    goto :goto_0

    .line 1063
    :cond_0
    sget-object v0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->ACTIVE:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    goto :goto_0

    .line 1064
    :cond_1
    sget-object v0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->UNTOKENIZED:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    .line 1067
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;->getTokenStatus()Lcom/google/android/gms/tapandpay/issuer/TokenStatus;

    move-result-object p1

    const-string v1, "tokenResult.tokenStatus"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2037
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1068
    :cond_2
    sget-object p1, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->NOT_FOUND:Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3037
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1069
    :goto_1
    iget-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getTokenStatus$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1070
    iget-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getTokenStatus$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
