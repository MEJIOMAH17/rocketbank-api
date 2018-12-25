.class final Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferSkipProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f9355307bc4d2b2L


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required but it was "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 222
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;

    .line 223
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v1

    .line 225
    iget v3, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    iget v4, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    sub-long v7, p1, v5

    invoke-static {v3, v4, v7, v8}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide p1

    .line 226
    invoke-static {v1, v2, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide p1

    .line 227
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->access$100(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V

    return-void

    .line 229
    :cond_1
    iget v1, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide p1

    .line 230
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->access$200(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V

    :cond_2
    return-void
.end method
