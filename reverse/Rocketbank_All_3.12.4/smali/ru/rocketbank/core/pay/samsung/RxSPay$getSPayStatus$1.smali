.class final Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/RxSPay;
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
.field final synthetic this$0:Lru/rocketbank/core/pay/samsung/RxSPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/samsung/RxSPay;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 76
    check-cast p1, Lrx/Subscriber;

    .line 1077
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getSamsungPay$p(Lru/rocketbank/core/pay/samsung/RxSPay;)Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;

    invoke-direct {v1, p1}, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;-><init>(Lrx/Subscriber;)V

    check-cast v1, Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPay;->getSamsungPayStatus(Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;)V

    return-void
.end method
