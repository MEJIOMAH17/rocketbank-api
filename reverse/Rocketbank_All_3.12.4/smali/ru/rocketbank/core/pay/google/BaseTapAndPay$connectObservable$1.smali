.class final Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;
.super Ljava/lang/Object;
.source "BaseTapAndPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/google/BaseTapAndPay;->connectObservable()Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/BaseTapAndPay;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 3

    .line 26
    check-cast p1, Lrx/Subscriber;

    .line 1027
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1053
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1054
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 1028
    :cond_1
    :goto_0
    new-instance v0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;-><init>(Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;Lrx/Subscriber;)V

    .line 1040
    iget-object v1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v1}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 1042
    iget-object v1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v1}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;

    invoke-direct {v2, p0, v0, p1}, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$1;-><init>(Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1$connectionListener$1;Lrx/Subscriber;)V

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 1051
    iget-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {p1}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method
