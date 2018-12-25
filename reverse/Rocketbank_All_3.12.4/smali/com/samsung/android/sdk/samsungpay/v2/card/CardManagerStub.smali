.class final Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;
.super Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;
.source "CardManagerStub.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;


# instance fields
.field callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

.field private cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

.field serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    .line 26
    iput-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    return-void
.end method


# virtual methods
.method public final connectStub(Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;)V
    .locals 3

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onReceivedStub(Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->isValidServiceBinder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->getServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1072
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->isValidServiceBinder()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SPAYSDK:CardManagerStub"

    const-string v2, "service binder is null."

    .line 1073
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onReceivedStub(Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

    .line 54
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    const-string v0, "com.samsung.android.spay.sdk.v2.service.AppToAppService"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->createService(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;Ljava/lang/String;)V

    return-void
.end method

.method public final disConnectStub()V
    .locals 1

    const/4 v0, 0x0

    .line 2068
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->unbindService()V

    return-void
.end method

.method protected final getStub()Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;
    .locals 2

    .line 3064
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "SPAYSDK:CardManagerStub"

    const-string v1, "ISCardManager is null."

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    return-object v0
.end method

.method protected final isValidStub()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 1

    .line 6035
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void
.end method

.method public final onReceived(Landroid/os/IBinder;)V
    .locals 2

    .line 5072
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->isValidServiceBinder()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPAYSDK:CardManagerStub"

    const-string v1, "service binder is null."

    .line 5073
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    .line 4030
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->callerStubConnector:Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;

    .line 6017
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/CardManagerStub;->cardManagerStub:Lcom/samsung/android/sdk/samsungpay/v2/card/ISCardManager;

    .line 4030
    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/StubConnector;->onReceivedStub(Ljava/lang/Object;)V

    return-void
.end method
