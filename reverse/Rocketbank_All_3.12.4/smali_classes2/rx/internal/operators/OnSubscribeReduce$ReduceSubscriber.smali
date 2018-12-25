.class final Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeReduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeReduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final reducer:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Lrx/functions/Func2<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    .line 66
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->reducer:Lrx/functions/Func2;

    .line 67
    sget-object p1, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    .line 68
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->request(J)V

    return-void
.end method


# virtual methods
.method final downstreamRequest(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 119
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

    if-eqz v2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 122
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->request(J)V

    :cond_1
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    .line 108
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 109
    sget-object v1, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    .line 95
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 97
    :cond_0
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 78
    sget-object v1, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 79
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    return-void

    .line 82
    :cond_1
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->reducer:Lrx/functions/Func2;

    invoke-interface {v1, v0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 84
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->unsubscribe()V

    .line 86
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
