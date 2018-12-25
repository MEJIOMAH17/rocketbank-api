.class public final Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;
.super Ljava/lang/Object;
.source "BaseTapAndPay.kt"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $connectionListener:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;

.field final synthetic $subscriber:Lrx/Subscriber;

.field final synthetic this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;",
            "Lrx/Subscriber;",
            ")V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;->$connectionListener:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;

    iput-object p3, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string v0, "failResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    iget-object v0, v0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    iget-object v0, v0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;->$connectionListener:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v1, Lru/rocketbank/core/pay/google/GoogleApiConnectException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lru/rocketbank/core/pay/google/GoogleApiConnectException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
