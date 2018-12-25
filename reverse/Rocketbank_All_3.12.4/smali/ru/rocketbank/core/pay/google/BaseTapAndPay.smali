.class public abstract Lru/rocketbank/core/pay/google/BaseTapAndPay;
.super Ljava/lang/Object;
.source "BaseTapAndPay.kt"


# instance fields
.field private final cardNetwork:I

.field private final googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final tapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;

.field private final tsp:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/tapandpay/TapAndPay;)V
    .locals 1

    const-string v0, "googleApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tapAndPay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->tapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;

    const/4 p1, 0x3

    .line 16
    iput p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->tsp:I

    .line 17
    iput p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->cardNetwork:I

    return-void
.end method

.method public static final synthetic access$disconnectApiClient(Lru/rocketbank/core/pay/google/BaseTapAndPay;)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object p0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getGoogleApiClient$p(Lru/rocketbank/core/pay/google/BaseTapAndPay;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method


# virtual methods
.method protected final connectObservable()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$1;-><init>(Lru/rocketbank/core/pay/google/BaseTapAndPay;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 56
    new-instance v1, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$2;

    invoke-direct {v1, p0}, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$2;-><init>(Lru/rocketbank/core/pay/google/BaseTapAndPay;)V

    check-cast v1, Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    .line 58
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create<Google\u2026out(30, TimeUnit.SECONDS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final getTapAndPay()Lcom/google/android/gms/tapandpay/TapAndPay;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay;->tapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;

    return-object v0
.end method
