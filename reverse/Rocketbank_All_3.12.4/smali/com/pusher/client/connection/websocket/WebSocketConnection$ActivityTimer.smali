.class Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityTimer"
.end annotation


# instance fields
.field private final activityTimeout:J

.field private pingTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final pongTimeout:J

.field private pongTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;


# direct methods
.method public constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;JJ)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-wide p2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->activityTimeout:J

    .line 295
    iput-wide p4, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimeout:J

    return-void
.end method

.method static synthetic access$1000(Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->schedulePongCheck()V

    return-void
.end method

.method private declared-synchronized schedulePongCheck()V
    .locals 5

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimer:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$400(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/util/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/util/Factory;->getTimers()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$2;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$2;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;)V

    iget-wide v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimeout:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimer:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 336
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized activity()V
    .locals 5

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimer:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pingTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pingTimer:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$400(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/util/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/util/Factory;->getTimers()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;)V

    iget-wide v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->activityTimeout:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pingTimer:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 302
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelTimeouts()V
    .locals 2

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pingTimer:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pingTimer:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->pongTimer:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 323
    monitor-exit p0

    throw v0
.end method
