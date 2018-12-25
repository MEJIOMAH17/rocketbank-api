.class final Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1$1;
.super Ljava/lang/Object;
.source "UiTapAndPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;
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

.field final synthetic this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 4

    .line 20
    check-cast p1, Lrx/Subscriber;

    .line 1022
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;

    iget-object v0, v0, Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay;

    invoke-virtual {v0}, Lru/rocketbank/core/pay/google/UiTapAndPay;->getTapAndPay()Lcom/google/android/gms/tapandpay/TapAndPay;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;

    iget-object v2, v2, Lru/rocketbank/core/pay/google/UiTapAndPay$createWallet$1;->$activity:Landroid/app/Activity;

    const v3, 0xb261

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tapandpay/TapAndPay;->createWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;I)V

    .line 1023
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1024
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1026
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
