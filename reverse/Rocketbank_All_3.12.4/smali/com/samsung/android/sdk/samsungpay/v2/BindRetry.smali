.class abstract Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;
.super Ljava/lang/Object;
.source "BindRetry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;
    }
.end annotation


# instance fields
.field private SPAY_BIND_TIMEOUT:J

.field private bindRetryTimerTask:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;

.field protected isScheduled:Z

.field private mBindCounter:I

.field private final scheduleLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    .line 14
    iput-wide v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->SPAY_BIND_TIMEOUT:J

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->scheduleLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1047
    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z

    const/4 v0, 0x4

    .line 1048
    iput v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;)Ljava/lang/Object;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->scheduleLock:Ljava/lang/Object;

    return-object p0
.end method

.method private getBindCounter()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->scheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Cannot clone instance of this class"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final isOverCounter()Z
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->getBindCounter()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final isScheduled()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->scheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final releaseBindTimerTask()V
    .locals 6

    const-string v0, "SPAYSDK:BindRetry"

    const-string v1, "releaseBindTimerTask: cleanup binder timer"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->scheduleLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->bindRetryTimerTask:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;->cancel()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SPAYSDK:BindRetry"

    const-string v4, "releaseBindTimerTask: timerTask cancel return true "

    .line 107
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "SPAYSDK:BindRetry"

    const-string v4, "releaseBindTimerTask: timerTask cancel return false "

    .line 109
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3047
    :goto_0
    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z

    .line 3048
    iput v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SPAYSDK:BindRetry"

    const-string v5, "releaseBindTimerTask: Exception in canceling bind timer "

    .line 112
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4047
    :try_start_3
    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z

    .line 4048
    iput v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I

    .line 117
    :goto_1
    monitor-exit v0

    return-void

    .line 5047
    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z

    .line 5048
    iput v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I

    .line 115
    throw v3

    :catchall_1
    move-exception v1

    .line 117
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method abstract runTimer()V
.end method

.method protected final scheduleBindTimer()Z
    .locals 7

    const-string v0, "SPAYSDK:BindRetry"

    const-string v1, "scheduleBindTimer: scheduling bind timer"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->scheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->getBindCounter()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->releaseBindTimerTask()V

    .line 81
    monitor-exit v0

    return v2

    .line 84
    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I

    const-string v1, "SPAYSDK:BindRetry"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scheduleBindTimer: count = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->mBindCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    new-instance v1, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->bindRetryTimerTask:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;

    .line 89
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->bindRetryTimerTask:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;

    iget-wide v5, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->SPAY_BIND_TIMEOUT:J

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1067
    iput-boolean v3, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    monitor-exit v0

    return v3

    :catch_0
    move-exception v1

    const-string v3, "SPAYSDK:BindRetry"

    const-string v4, "scheduleBindTimer: Exception in scheduling bind timer "

    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2067
    iput-boolean v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z

    .line 96
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 98
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
