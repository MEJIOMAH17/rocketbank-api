.class public final Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;
.super Ljava/lang/Object;
.source "BaseTapAndPay.kt"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;

.field final synthetic this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber;",
            ")V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    iget-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    iget-object p1, p1, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {p1}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 31
    iget-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;->$subscriber:Lrx/Subscriber;

    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    iget-object v0, v0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 36
    iget-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    iget-object p1, p1, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {p1}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method
