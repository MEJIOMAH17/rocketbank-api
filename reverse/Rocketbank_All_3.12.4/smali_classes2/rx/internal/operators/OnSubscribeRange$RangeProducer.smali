.class final Lrx/internal/operators/OnSubscribeRange$RangeProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x391941e9d0fd3194L


# instance fields
.field private final childSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentIndex:J

.field private final endOfRange:I


# direct methods
.method constructor <init>(Lrx/Subscriber;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->childSubscriber:Lrx/Subscriber;

    int-to-long p1, p2

    .line 51
    iput-wide p1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    .line 52
    iput p3, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->endOfRange:I

    return-void
.end method


# virtual methods
.method final fastPath()V
    .locals 10

    .line 122
    iget v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->endOfRange:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->childSubscriber:Lrx/Subscriber;

    .line 124
    iget-wide v6, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    :goto_0
    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    long-to-int v1, v6

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long v8, v6, v2

    move-wide v6, v8

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_2
    return-void
.end method

.method public final request(J)V
    .locals 6

    .line 57
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    cmp-long v0, p1, v2

    const-wide/16 v4, 0x0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0, v4, v5, v2, v3}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->fastPath()V

    return-void

    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 65
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 68
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->slowPath(J)V

    :cond_2
    return-void
.end method

.method final slowPath(J)V
    .locals 13

    .line 78
    iget v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->endOfRange:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 79
    iget-wide v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    .line 81
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->childSubscriber:Lrx/Subscriber;

    const-wide/16 v7, 0x0

    move-wide v9, v0

    move-wide v0, p1

    :goto_0
    move-wide p1, v7

    :cond_0
    :goto_1
    cmp-long v11, p1, v0

    if-eqz v11, :cond_2

    cmp-long v11, v9, v4

    if-eqz v11, :cond_2

    .line 86
    invoke-virtual {v6}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_1

    return-void

    :cond_1
    long-to-int v11, v9

    .line 90
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long v11, v9, v2

    add-long v9, p1, v2

    move-wide p1, v9

    move-wide v9, v11

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v6}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    cmp-long v0, v9, v4

    if-nez v0, :cond_4

    .line 101
    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 105
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->get()J

    move-result-wide v0

    cmp-long v11, v0, p1

    if-nez v11, :cond_0

    .line 108
    iput-wide v9, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->currentIndex:J

    neg-long p1, p1

    .line 109
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->addAndGet(J)J

    move-result-wide v0

    cmp-long p1, v0, v7

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return-void
.end method
