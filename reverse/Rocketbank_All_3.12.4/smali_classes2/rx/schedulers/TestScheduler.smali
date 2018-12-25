.class public Lrx/schedulers/TestScheduler;
.super Lrx/Scheduler;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TestScheduler$InnerTestScheduler;,
        Lrx/schedulers/TestScheduler$CompareActionsByTime;,
        Lrx/schedulers/TestScheduler$TimedAction;
    }
.end annotation


# static fields
.field static counter:J


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrx/schedulers/TestScheduler$TimedAction;",
            ">;"
        }
    .end annotation
.end field

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 34
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lrx/schedulers/TestScheduler$CompareActionsByTime;

    invoke-direct {v1}, Lrx/schedulers/TestScheduler$CompareActionsByTime;-><init>()V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    return-void
.end method

.method private triggerActions(J)V
    .locals 6

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/TestScheduler$TimedAction;

    .line 113
    iget-wide v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v3, v1, p1

    if-gtz v3, :cond_2

    .line 117
    iget-wide v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lrx/schedulers/TestScheduler;->time:J

    goto :goto_1

    :cond_1
    iget-wide v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    :goto_1
    iput-wide v1, p0, Lrx/schedulers/TestScheduler;->time:J

    .line 118
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 121
    iget-object v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v0, v0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    goto :goto_0

    .line 125
    :cond_2
    iput-wide p1, p0, Lrx/schedulers/TestScheduler;->time:J

    return-void
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .line 86
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long v2, v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, p1}, Lrx/schedulers/TestScheduler;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 98
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 99
    invoke-direct {p0, p1, p2}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    return-void
.end method

.method public createWorker()Lrx/Scheduler$Worker;
    .locals 1

    .line 130
    new-instance v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;

    invoke-direct {v0, p0}, Lrx/schedulers/TestScheduler$InnerTestScheduler;-><init>(Lrx/schedulers/TestScheduler;)V

    return-object v0
.end method

.method public now()J
    .locals 3

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public triggerActions()V
    .locals 2

    .line 107
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-direct {p0, v0, v1}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    return-void
.end method
