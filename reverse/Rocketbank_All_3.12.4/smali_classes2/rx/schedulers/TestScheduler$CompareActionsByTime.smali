.class final Lrx/schedulers/TestScheduler$CompareActionsByTime;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompareActionsByTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lrx/schedulers/TestScheduler$TimedAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 60
    check-cast p1, Lrx/schedulers/TestScheduler$TimedAction;

    check-cast p2, Lrx/schedulers/TestScheduler$TimedAction;

    invoke-virtual {p0, p1, p2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;->compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I

    move-result p1

    return p1
.end method

.method public final compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I
    .locals 8

    .line 64
    iget-wide v0, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v2, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v4, :cond_2

    .line 65
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v3

    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v2

    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    return v1

    :cond_1
    return v0

    .line 67
    :cond_2
    iget-wide v3, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v5, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    return v2

    :cond_3
    iget-wide v2, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide p1, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v4, v2, p1

    if-lez v4, :cond_4

    return v1

    :cond_4
    return v0
.end method
