.class public final Lru/rocketbank/core/utils/rx/OperatorParallelMap;
.super Ljava/lang/Object;
.source "OperatorParallelMap.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;

.field private final transformer:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Lrx/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+TR;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap;->transformer:Lrx/functions/Func1;

    .line 17
    iput-object p2, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap;->scheduler:Lrx/Scheduler;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/utils/rx/OperatorParallelMap;)Lrx/functions/Func1;
    .locals 0

    .line 11
    iget-object p0, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap;->transformer:Lrx/functions/Func1;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/OperatorParallelMap;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 24
    new-instance v1, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;

    invoke-direct {v1, p0, p1, v0, p1}, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;-><init>(Lru/rocketbank/core/utils/rx/OperatorParallelMap;Lrx/Subscriber;Lrx/Scheduler$Worker;Lrx/Subscriber;)V

    return-object v1
.end method
