.class final Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;
.super Ljava/lang/Object;
.source "UiTapAndPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;
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

.field final synthetic this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 7

    .line 81
    check-cast p1, Lrx/Subscriber;

    .line 1083
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;

    iget-object v0, v0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay;

    invoke-virtual {v0}, Lru/rocketbank/core/pay/google/UiTapAndPay;->getTapAndPay()Lcom/google/android/gms/tapandpay/TapAndPay;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;->$client:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;

    iget-object v3, v0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;->$activity:Landroid/app/Activity;

    iget-object v0, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;

    iget-object v4, v0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;->$token:Ljava/lang/String;

    const/4 v5, 0x3

    const/16 v6, 0x7156

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/tapandpay/TapAndPay;->requestDeleteToken(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Ljava/lang/String;II)V

    .line 1084
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1085
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1087
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
