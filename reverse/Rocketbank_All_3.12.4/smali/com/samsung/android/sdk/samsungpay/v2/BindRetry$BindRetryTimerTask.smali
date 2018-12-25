.class public final Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;
.super Ljava/util/TimerTask;
.source "BindRetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BindRetryTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "SPAYSDK:BindRetry"

    const-string v1, "run : BindRetryTimerTask"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->access$000(Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->isScheduled:Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry$BindRetryTimerTask;->this$0:Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/BindRetry;->runTimer()V

    return-void

    :catchall_0
    move-exception v1

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
