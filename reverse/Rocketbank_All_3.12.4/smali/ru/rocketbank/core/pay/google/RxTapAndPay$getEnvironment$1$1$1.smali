.class final Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1$1;
.super Ljava/lang/Object;
.source "RxTapAndPay.kt"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;
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
        "Lcom/google/android/gms/tapandpay/TapAndPay$GetEnvironmentResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    .line 13
    check-cast p1, Lcom/google/android/gms/tapandpay/TapAndPay$GetEnvironmentResult;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-interface {p1}, Lcom/google/android/gms/tapandpay/TapAndPay$GetEnvironmentResult;->getEnvironment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1085
    iget-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
