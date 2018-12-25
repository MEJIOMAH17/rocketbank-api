.class final Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;
.super Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;
.source "SamsungPayStub.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;


# instance fields
.field private callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

.field private samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

.field private serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    .line 18
    iput-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    return-void
.end method


# virtual methods
.method public final connectStub(Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;)V
    .locals 3

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onReceivedStub(Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->isValidServiceBinder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->getServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1068
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->isValidServiceBinder()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SPAYSDK:spayService"

    const-string v2, "service binder is null."

    .line 1069
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onReceivedStub(Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

    .line 50
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    const-string v0, "com.samsung.android.spay.sdk.v2.service.CommonAppService"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->createService(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;Ljava/lang/String;)V

    return-void
.end method

.method public final disConnectStub()V
    .locals 1

    const/4 v0, 0x0

    .line 2064
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->unbindService()V

    return-void
.end method

.method public final onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 1

    .line 7013
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

    .line 6027
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void
.end method

.method public final onReceived(Landroid/os/IBinder;)V
    .locals 2

    .line 4068
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->isValidServiceBinder()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPAYSDK:spayService"

    const-string v1, "service binder is null."

    .line 4069
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    .line 5013
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

    .line 6013
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/SamsungPayStub;->samsungPayStub:Lcom/samsung/android/sdk/samsungpay/v2/ISSamsungPay;

    .line 3022
    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onReceivedStub(Ljava/lang/Object;)V

    return-void
.end method
