.class public Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;,
        Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;
    }
.end annotation


# instance fields
.field protected bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

.field private bindTimeOut:J

.field private context:Landroid/content/Context;

.field private serviceAction:Ljava/lang/String;

.field private serviceBinder:Landroid/os/IBinder;

.field private serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private servicePackage:Ljava/lang/String;

.field private testDelay:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->testDelay:I

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->servicePackage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceAction:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindTimeOut:J

    .line 62
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$1;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1050
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->context:Landroid/content/Context;

    const-string p1, "com.samsung.android.spay"

    .line 1051
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->servicePackage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    return-object p0
.end method


# virtual methods
.method protected final declared-synchronized bindService()Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    .locals 5

    monitor-enter p0

    .line 4055
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3138
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4209
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->releaseBindTimerTask()V

    .line 149
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->EXIST_BINDER:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 152
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SPAYSDK:ServiceHelper"

    const-string v1, "bindService already attempted, waiting."

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE_ALREADY:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    const-string v0, ""

    .line 4213
    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SPAYSDK:ServiceHelper"

    const-string v1, "action is null, need to call createService before it."

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->CANNOT_BIND:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceAction:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->servicePackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v2, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$3;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)V

    .line 171
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "deathDetectorBinder"

    .line 172
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v2, "testDelay"

    .line 173
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->scheduleBindTimer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x41

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SPAYSDK:ServiceHelper"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service bind attempted and waiting for onConnect, from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->BINDING_SERVICE:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 183
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->releaseBindTimerTask()V

    .line 187
    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->CANNOT_BIND:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 146
    monitor-exit p0

    throw v0
.end method

.method protected final callbackBindingResult(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V
    .locals 2

    .line 115
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$4;->$SwitchMap$com$samsung$android$sdk$samsungpay$v2$ServiceHelper$BindingResult:[I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "SPAYSDK:ServiceHelper"

    const-string v1, "must not come into here."

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;->onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void

    :pswitch_0
    const-string p2, "SPAYSDK:ServiceHelper"

    const-string v0, "exist binder."

    .line 127
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    .line 128
    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;->onReceived(Landroid/os/IBinder;)V

    return-void

    :pswitch_1
    const-string v0, "SPAYSDK:ServiceHelper"

    const-string v1, "pay app service is not available"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;->onFailed(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void

    :pswitch_2
    const-string p1, "SPAYSDK:ServiceHelper"

    const-string p2, "request to bind already"

    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p1, "SPAYSDK:ServiceHelper"

    const-string p2, "request to bind"

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final createService(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceAction:Ljava/lang/String;

    .line 94
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$2;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindRetry:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->bindService()Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceCallback:Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->callbackBindingResult(Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$ServiceCallback;Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper$BindingResult;)V

    return-void
.end method

.method public final getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method protected final isValidServiceBinder()Z
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2209
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    return v0
.end method

.method protected final releaseServiceBinder()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    return-void
.end method

.method public final setServiceBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    return-void
.end method

.method protected final unbindService()V
    .locals 4

    .line 6055
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5138
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 6209
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "SPAYSDK:ServiceHelper"

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "! unbindService from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7209
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/ServiceHelper;->serviceBinder:Landroid/os/IBinder;

    return-void
.end method
