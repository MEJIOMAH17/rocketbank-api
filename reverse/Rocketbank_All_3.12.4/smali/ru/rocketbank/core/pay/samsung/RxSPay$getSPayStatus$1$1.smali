.class public final Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;->$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILandroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "errorReason"

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 94
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v1, Lru/rocketbank/core/pay/samsung/SamsungPayException;

    invoke-direct {v1, p1, p2}, Lru/rocketbank/core/pay/samsung/SamsungPayException;-><init>(ILandroid/os/Bundle;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 88
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v0, Lru/rocketbank/core/pay/samsung/SPayStatus;

    const/16 v1, -0x164

    invoke-direct {v0, v1, p2}, Lru/rocketbank/core/pay/samsung/SPayStatus;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    .line 91
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v0, Lru/rocketbank/core/pay/samsung/SPayStatus;

    const/16 v1, -0x165

    invoke-direct {v0, v1, p2}, Lru/rocketbank/core/pay/samsung/SPayStatus;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x165
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(ILandroid/os/Bundle;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;->$subscriber:Lrx/Subscriber;

    new-instance v1, Lru/rocketbank/core/pay/samsung/SPayStatus;

    invoke-direct {v1, p1, p2}, Lru/rocketbank/core/pay/samsung/SPayStatus;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$getSPayStatus$1$1;->$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
