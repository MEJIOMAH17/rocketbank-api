.class final Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;
.super Ljava/lang/Object;
.source "ServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isOverCounter()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SPAYSDK:ServiceHelper"

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->setServiceBinder(Landroid/os/IBinder;)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->access$000(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;->onReceived(Landroid/os/IBinder;)V

    return-void

    :cond_0
    const-string p1, "SPAYSDK:ServiceHelper"

    const-string p2, "service timeouted"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SPAYSDK:ServiceHelper"

    const-string v0, "service disconnected"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-static {p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->access$000(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->DISCONNECTED_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;->onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->releaseServiceBinder()V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;

    iget-object p1, p1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->releaseBindTimerTask()V

    return-void
.end method
