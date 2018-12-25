.class final Lcom/crashlytics/android/answers/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# instance fields
.field lastRetry:J

.field private retryState$253c810b:Landroid/support/v7/gridlayout/R$dimen;


# direct methods
.method public constructor <init>(Landroid/support/v7/gridlayout/R$dimen;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState$253c810b:Landroid/support/v7/gridlayout/R$dimen;

    return-void
.end method


# virtual methods
.method public final canRetry(J)Z
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState$253c810b:Landroid/support/v7/gridlayout/R$dimen;

    invoke-virtual {v0}, Landroid/support/v7/gridlayout/R$dimen;->getRetryDelay()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    .line 34
    iget-wide v0, p0, Lcom/crashlytics/android/answers/RetryManager;->lastRetry:J

    sub-long v4, p1, v0

    cmp-long p1, v4, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final recordRetry(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/crashlytics/android/answers/RetryManager;->lastRetry:J

    .line 42
    iget-object p1, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState$253c810b:Landroid/support/v7/gridlayout/R$dimen;

    invoke-virtual {p1}, Landroid/support/v7/gridlayout/R$dimen;->nextRetryState$3053fe0c()Landroid/support/v7/gridlayout/R$dimen;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState$253c810b:Landroid/support/v7/gridlayout/R$dimen;

    return-void
.end method

.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/crashlytics/android/answers/RetryManager;->lastRetry:J

    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState$253c810b:Landroid/support/v7/gridlayout/R$dimen;

    invoke-virtual {v0}, Landroid/support/v7/gridlayout/R$dimen;->initialRetryState$3053fe0c()Landroid/support/v7/gridlayout/R$dimen;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/RetryManager;->retryState$253c810b:Landroid/support/v7/gridlayout/R$dimen;

    return-void
.end method
