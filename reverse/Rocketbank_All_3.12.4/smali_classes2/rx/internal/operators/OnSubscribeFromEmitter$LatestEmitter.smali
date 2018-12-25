.class final Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 452
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;-><init>(Lrx/Subscriber;)V

    .line 453
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 454
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method final drain()V
    .locals 15

    .line 489
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->actual:Lrx/Subscriber;

    .line 495
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x1

    move v3, v2

    .line 498
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v10, :cond_6

    .line 502
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 503
    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 507
    :cond_2
    iget-boolean v10, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->done:Z

    .line 509
    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_3

    move v14, v2

    goto :goto_1

    :cond_3
    move v14, v11

    :goto_1
    if-eqz v10, :cond_5

    if-eqz v14, :cond_5

    .line 514
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 516
    invoke-super {p0, v0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 518
    :cond_4
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onCompleted()V

    return-void

    :cond_5
    if-nez v14, :cond_6

    .line 527
    invoke-static {v13}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long v12, v8, v10

    move-wide v8, v12

    goto :goto_0

    :cond_6
    cmp-long v10, v8, v4

    if-nez v10, :cond_a

    .line 533
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 534
    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 538
    :cond_7
    iget-boolean v4, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->done:Z

    .line 540
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    move v11, v2

    :cond_8
    if-eqz v4, :cond_a

    if-eqz v11, :cond_a

    .line 543
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 545
    invoke-super {p0, v0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 547
    :cond_9
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onCompleted()V

    return-void

    :cond_a
    cmp-long v4, v8, v6

    if-eqz v4, :cond_b

    .line 554
    invoke-static {p0, v8, v9}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 557
    :cond_b
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public final onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->done:Z

    .line 473
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 466
    iput-boolean p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->done:Z

    .line 467
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->drain()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 460
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->drain()V

    return-void
.end method

.method final onRequested()V
    .locals 0

    .line 478
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->drain()V

    return-void
.end method

.method final onUnsubscribed()V
    .locals 2

    .line 483
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
