.class public Lru/rocketbank/r2d2/RocketHandler;
.super Landroid/os/Handler;
.source "RocketHandler.java"


# static fields
.field private static instance:Lru/rocketbank/r2d2/RocketHandler;


# instance fields
.field private _isPaused:Z

.field private final _pausedMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/RocketHandler;->_pausedMessages:Ljava/util/Queue;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lru/rocketbank/r2d2/RocketHandler;->_isPaused:Z

    return-void
.end method

.method public static getInstance()Lru/rocketbank/r2d2/RocketHandler;
    .locals 1

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/RocketHandler;->instance:Lru/rocketbank/r2d2/RocketHandler;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lru/rocketbank/r2d2/RocketHandler;

    invoke-direct {v0}, Lru/rocketbank/r2d2/RocketHandler;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/RocketHandler;->instance:Lru/rocketbank/r2d2/RocketHandler;

    .line 21
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/RocketHandler;->instance:Lru/rocketbank/r2d2/RocketHandler;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 38
    iget-boolean v0, p0, Lru/rocketbank/r2d2/RocketHandler;->_isPaused:Z

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketHandler;->_pausedMessages:Ljava/util/Queue;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lru/rocketbank/r2d2/RocketHandler;->_isPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lru/rocketbank/r2d2/RocketHandler;->_isPaused:Z

    .line 27
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketHandler;->_pausedMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 28
    invoke-super {p0, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    return-void
.end method
