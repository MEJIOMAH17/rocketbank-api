.class final Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;
.super Ljava/lang/Object;
.source "RxTapAndPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;
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


# instance fields
.field final synthetic $client:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic this$0:Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;->this$0:Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 81
    check-cast p1, Lrx/Subscriber;

    .line 1083
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;->this$0:Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;

    iget-object v0, v0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;->this$0:Lru/rocketbank/core/pay/google/RxTapAndPay;

    invoke-virtual {v0}, Lru/rocketbank/core/pay/google/RxTapAndPay;->getTapAndPay()Lcom/google/android/gms/tapandpay/TapAndPay;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tapandpay/TapAndPay;->getEnvironment(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1$1;

    invoke-direct {v1, p1}, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1$1;-><init>(Lrx/Subscriber;)V

    check-cast v1, Lcom/google/android/gms/common/api/ResultCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1088
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
