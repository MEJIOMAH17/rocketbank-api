.class final Lru/rocketbank/core/pay/samsung/RxSPay$activateApp$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/samsung/RxSPay;->activateApp()Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/pay/samsung/RxSPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/samsung/RxSPay;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$activateApp$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 1

    .line 107
    check-cast p1, Lrx/CompletableSubscriber;

    .line 1108
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$activateApp$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getSamsungPay$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->activateSamsungPay()V

    .line 1109
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void
.end method
