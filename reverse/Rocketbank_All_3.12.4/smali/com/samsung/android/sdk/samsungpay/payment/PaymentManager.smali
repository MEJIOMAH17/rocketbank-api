.class public Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mPendingCommandQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/sdk/samsungpay/payment/ISPaymentManager;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic access$1000(Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;)V
    .locals 0

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;)V
    .locals 0

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 2611
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;->mService:Lcom/samsung/android/sdk/samsungpay/payment/ISPaymentManager;

    .line 1671
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;)V
    .locals 2

    :try_start_0
    const-string v0, "PaymentManager"

    const-string v1, "doStart"

    .line 3556
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/SSamsungPay;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/SSamsungPay;-><init>()V

    .line 3558
    invoke-static {}, Lcom/samsung/android/sdk/samsungpay/SSamsungPay;->getVersionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3565
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    const-string v0, "PaymentManager"

    const-string v1, "DeadObjectException SDK Service died"

    .line 3561
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3562
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;->mService:Lcom/samsung/android/sdk/samsungpay/payment/ISPaymentManager;

    .line 3563
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;->connectToPayService$134632()Z

    return-void
.end method

.method private connectToPayService$134632()Z
    .locals 4

    const-string v0, "PaymentManager"

    const-string v1, "bindService"

    .line 646
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.spay.sdk.service.InAppService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.spay"

    .line 648
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    const/16 v3, 0x41

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;->mPendingCommandQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    const-string v1, "PaymentManager"

    const-string v2, "Cmd push : 200"

    .line 655
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentManager;->mPendingCommandQueue:Ljava/util/LinkedList;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 657
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
