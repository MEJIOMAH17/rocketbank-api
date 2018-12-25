.class final Lrx/internal/operators/CachedObservable$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field emitting:Z

.field index:I

.field missed:Z

.field final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/internal/operators/CachedObservable$CacheState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Lrx/internal/operators/CachedObservable$CacheState<",
            "TT;>;)V"
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 289
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 290
    iput-object p2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 5

    .line 320
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final produced(J)J
    .locals 0

    neg-long p1, p1

    .line 315
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/CachedObservable$ReplayProducer;->addAndGet(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final replay()V
    .locals 19

    move-object/from16 v1, p0

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-boolean v2, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 340
    iput-boolean v3, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 341
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    iput-boolean v3, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v2, 0x0

    .line 347
    :try_start_1
    iget-object v4, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 351
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    return-void

    .line 360
    :cond_1
    iget-object v9, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v9}, Lrx/internal/operators/CachedObservable$CacheState;->size()I

    move-result v9

    if-eqz v9, :cond_b

    .line 362
    iget-object v10, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    if-nez v10, :cond_2

    .line 366
    iget-object v10, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v10}, Lrx/internal/operators/CachedObservable$CacheState;->head()[Ljava/lang/Object;

    move-result-object v10

    .line 367
    iput-object v10, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 369
    :cond_2
    array-length v11, v10

    sub-int/2addr v11, v3

    .line 370
    iget v12, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 371
    iget v13, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    cmp-long v14, v5, v7

    if-nez v14, :cond_4

    .line 374
    aget-object v5, v10, v13

    .line 375
    invoke-static {v5}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 376
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 378
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move v4, v3

    goto/16 :goto_4

    .line 381
    :cond_3
    :try_start_3
    invoke-static {v5}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 382
    invoke-static {v5}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 384
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_4
    cmp-long v14, v5, v7

    if-lez v14, :cond_b

    move v14, v2

    :goto_1
    if-ge v12, v9, :cond_9

    cmp-long v15, v5, v7

    if-lez v15, :cond_9

    .line 392
    :try_start_5
    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v15

    if-eqz v15, :cond_5

    return-void

    :cond_5
    if-ne v13, v11, :cond_6

    .line 397
    aget-object v10, v10, v11

    check-cast v10, [Ljava/lang/Object;

    move v13, v2

    .line 400
    :cond_6
    aget-object v15, v10, v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 403
    :try_start_6
    invoke-static {v4, v15}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v16
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v16, :cond_7

    .line 405
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    move v6, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v15, 0x1

    sub-long v17, v5, v15

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v5, v17

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    move v6, v2

    .line 409
    :goto_2
    :try_start_8
    invoke-static {v5}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 411
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V

    .line 412
    invoke-static {v15}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v15}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 413
    invoke-static {v15}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    move-object v3, v0

    move v4, v6

    goto :goto_6

    .line 424
    :cond_9
    :try_start_a
    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_a

    return-void

    .line 429
    :cond_a
    iput v12, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 430
    iput v13, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 431
    iput-object v10, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    int-to-long v5, v14

    .line 432
    invoke-virtual {v1, v5, v6}, Lrx/internal/operators/CachedObservable$ReplayProducer;->produced(J)J

    .line 436
    :cond_b
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 437
    :try_start_b
    iget-boolean v5, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    if-nez v5, :cond_c

    .line 438
    iput-boolean v2, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 440
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    move v4, v3

    goto :goto_5

    .line 442
    :cond_c
    :try_start_d
    iput-boolean v2, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 443
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v3, v0

    move v4, v2

    :goto_3
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    :goto_4
    move-object v3, v0

    goto :goto_6

    :catchall_5
    move-exception v0

    :goto_5
    move-object v3, v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v3, v0

    move v4, v2

    :goto_6
    if-nez v4, :cond_d

    .line 447
    monitor-enter p0

    .line 448
    :try_start_10
    iput-boolean v2, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 449
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v2

    :cond_d
    :goto_7
    throw v3

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 344
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v2
.end method

.method public final request(J)V
    .locals 7

    .line 295
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    :cond_1
    add-long v4, v0, p1

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    .line 303
    :cond_2
    invoke-virtual {p0, v0, v1, v4, v5}, Lrx/internal/operators/CachedObservable$ReplayProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    return-void
.end method

.method public final unsubscribe()V
    .locals 5

    .line 324
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v0, -0x1

    .line 326
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->getAndSet(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 328
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v0, p0}, Lrx/internal/operators/CachedObservable$CacheState;->removeProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V

    :cond_0
    return-void
.end method
