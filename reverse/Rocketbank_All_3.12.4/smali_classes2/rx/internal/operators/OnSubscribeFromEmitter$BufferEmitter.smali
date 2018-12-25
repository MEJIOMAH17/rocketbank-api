.class final Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferEmitter"
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
.field private static final serialVersionUID:J = 0x21aef8f9f7f1cbc3L


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;-><init>(Lrx/Subscriber;)V

    .line 325
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {p1, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {p1, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->queue:Ljava/util/Queue;

    .line 328
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method final drain()V
    .locals 14

    .line 363
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->actual:Lrx/Subscriber;

    .line 369
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->queue:Ljava/util/Queue;

    const/4 v2, 0x1

    move v3, v2

    .line 372
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_6

    .line 376
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 377
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    return-void

    .line 381
    :cond_2
    iget-boolean v10, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->done:Z

    .line 383
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    move v12, v2

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    if-eqz v10, :cond_5

    if-eqz v12, :cond_5

    .line 388
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 390
    invoke-super {p0, v0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 392
    :cond_4
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onCompleted()V

    return-void

    :cond_5
    if-nez v12, :cond_6

    .line 401
    invoke-static {v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long v12, v8, v10

    move-wide v8, v12

    goto :goto_0

    :cond_6
    cmp-long v10, v8, v4

    if-nez v10, :cond_9

    .line 407
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 408
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    return-void

    .line 412
    :cond_7
    iget-boolean v4, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->done:Z

    .line 414
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 417
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    .line 419
    invoke-super {p0, v0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 421
    :cond_8
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;->onCompleted()V

    return-void

    :cond_9
    cmp-long v4, v8, v6

    if-eqz v4, :cond_a

    .line 428
    invoke-static {p0, v8, v9}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 431
    :cond_a
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public final onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->done:Z

    .line 347
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->done:Z

    .line 341
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->drain()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->drain()V

    return-void
.end method

.method final onRequested()V
    .locals 0

    .line 352
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->drain()V

    return-void
.end method

.method final onUnsubscribed()V
    .locals 1

    .line 357
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    return-void
.end method
