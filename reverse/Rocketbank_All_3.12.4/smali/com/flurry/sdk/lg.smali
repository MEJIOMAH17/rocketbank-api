.class final Lcom/flurry/sdk/lg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lg$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/flurry/sdk/lg$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 46
    iput-object v1, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    .line 49
    :cond_0
    iput-object v1, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lg$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/flurry/sdk/lg;->a()V

    .line 38
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "FlurrySessionTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    .line 39
    new-instance v0, Lcom/flurry/sdk/lg$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lg$a;-><init>(Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lg$a;

    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lg$a;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method
