.class Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;
.super Lrx/Subscriber;
.source "OperatorParallelMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/rx/OperatorParallelMap;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/utils/rx/OperatorParallelMap;

.field final synthetic val$o:Lrx/Subscriber;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/rx/OperatorParallelMap;Lrx/Subscriber;Lrx/Scheduler$Worker;Lrx/Subscriber;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->this$0:Lru/rocketbank/core/utils/rx/OperatorParallelMap;

    iput-object p3, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->val$worker:Lrx/Scheduler$Worker;

    iput-object p4, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$1;-><init>(Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$2;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$2;-><init>(Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v1, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$3;

    invoke-direct {v1, p0, p1, p0}, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$3;-><init>(Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;Ljava/lang/Object;Lrx/Observer;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method
