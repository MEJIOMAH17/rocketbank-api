.class public Lrx/Single;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Single$Transformer;,
        Lrx/Single$OnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final onSubscribe:Lrx/Single$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lrx/internal/operators/SingleFromObservable;

    invoke-direct {v0, p1}, Lrx/internal/operators/SingleFromObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object p1

    iput-object p1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    return-void
.end method

.method protected constructor <init>(Lrx/Single$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object p1

    iput-object p1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    return-void
.end method

.method private static asObservable(Lrx/Single;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 204
    new-instance v0, Lrx/internal/operators/SingleToObservable;

    iget-object p0, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, p0}, Lrx/internal/operators/SingleToObservable;-><init>(Lrx/Single$OnSubscribe;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 230
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p0, p1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 253
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 305
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 334
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static/range {p0 .. p5}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 365
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static/range {p0 .. p6}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 398
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static/range {p0 .. p7}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static {p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p8

    invoke-static/range {p0 .. p8}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lrx/Single$OnSubscribe;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lrx/Single;

    invoke-direct {v0, p0}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Lrx/Single<",
            "TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2362
    new-instance v0, Lrx/Single$17;

    invoke-direct {v0, p0}, Lrx/Single$17;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 455
    new-instance v0, Lrx/Single$1;

    invoke-direct {v0, p0}, Lrx/Single$1;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lrx/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 489
    new-instance v0, Lrx/internal/operators/SingleFromFuture;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/SingleFromFuture;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 521
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 523
    :cond_0
    new-instance v0, Lrx/internal/operators/SingleFromFuture;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/SingleFromFuture;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/util/concurrent/Future;Lrx/Scheduler;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 551
    invoke-static {p0}, Lrx/Single;->from(Ljava/util/concurrent/Future;)Lrx/Single;

    move-result-object p0

    invoke-virtual {p0, p1}, Lrx/Single;->subscribeOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 572
    new-instance v0, Lrx/internal/operators/SingleFromCallable;

    invoke-direct {v0, p0}, Lrx/internal/operators/SingleFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method static iterableToArray(Ljava/lang/Iterable;)[Lrx/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)[",
            "Lrx/Single<",
            "+TT;>;"
        }
    .end annotation

    .line 2437
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2438
    check-cast p0, Ljava/util/Collection;

    .line 2439
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2440
    new-array v0, v0, [Lrx/Single;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lrx/Single;

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    .line 2442
    new-array v0, v0, [Lrx/Single;

    .line 2444
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Single;

    .line 2445
    array-length v4, v2

    if-ne v0, v4, :cond_1

    shr-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    .line 2446
    new-array v4, v4, [Lrx/Single;

    .line 2447
    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v4

    .line 2450
    :cond_1
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2454
    :cond_2
    array-length p0, v2

    if-ne p0, v0, :cond_3

    move-object p0, v2

    goto :goto_1

    .line 2457
    :cond_3
    new-array p0, v0, [Lrx/Single;

    .line 2458
    invoke-static {v2, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 595
    invoke-static {p0}, Lrx/internal/util/ScalarSynchronousSingle;->create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousSingle;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 665
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p0, p1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 691
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 719
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 749
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 781
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static/range {p0 .. p5}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 815
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static/range {p0 .. p6}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 851
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static/range {p0 .. p7}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 889
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static {p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p8

    invoke-static/range {p0 .. p8}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lrx/Single;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 618
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_0

    .line 619
    check-cast p0, Lrx/internal/util/ScalarSynchronousSingle;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p0

    return-object p0

    .line 621
    :cond_0
    new-instance v0, Lrx/Single$2;

    invoke-direct {v0, p0}, Lrx/Single$2;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method private unsafeSubscribe(Lrx/Subscriber;Z)Lrx/Subscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;Z)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1691
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 1693
    :cond_0
    :goto_0
    iget-object p2, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-static {p0, p2}, Lrx/plugins/RxJavaHooks;->onSingleStart(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object p2

    invoke-static {p1}, Lrx/internal/operators/SingleLiftObservableOperator;->wrap(Lrx/Subscriber;)Lrx/SingleSubscriber;

    move-result-object v0

    invoke-interface {p2, v0}, Lrx/Single$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1694
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onSingleReturn(Lrx/Subscription;)Lrx/Subscription;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 1697
    :goto_1
    invoke-static {p2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1700
    :try_start_1
    invoke-static {p2}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1711
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 1702
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1705
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occurred attempting to subscribe ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] and then again while trying to pass to onError."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1707
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1709
    throw v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "TResource;>;",
            "Lrx/functions/Func1<",
            "-TResource;+",
            "Lrx/Single<",
            "+TT;>;>;",
            "Lrx/functions/Action1<",
            "-TResource;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    const/4 v0, 0x0

    .line 2604
    invoke-static {p0, p1, p2, v0}, Lrx/Single;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "TResource;>;",
            "Lrx/functions/Func1<",
            "-TResource;+",
            "Lrx/Single<",
            "+TT;>;>;",
            "Lrx/functions/Action1<",
            "-TResource;>;Z)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    if-nez p0, :cond_0

    .line 2642
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "resourceFactory is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 2645
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "singleFactory is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p2, :cond_2

    .line 2648
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "disposeAction is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2650
    :cond_2
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/SingleOnSubscribeUsing;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Single<",
            "*>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1269
    invoke-static {p0}, Lrx/Single;->iterableToArray(Ljava/lang/Iterable;)[Lrx/Single;

    move-result-object p0

    .line 1270
    invoke-static {p0, p1}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func9;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/Single<",
            "+TT7;>;",
            "Lrx/Single<",
            "+TT8;>;",
            "Lrx/Single<",
            "+TT9;>;",
            "Lrx/functions/Func9<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/16 v0, 0x9

    .line 1236
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    new-instance p0, Lrx/Single$10;

    invoke-direct {p0, p9}, Lrx/Single$10;-><init>(Lrx/functions/Func9;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func8;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/Single<",
            "+TT7;>;",
            "Lrx/Single<",
            "+TT8;>;",
            "Lrx/functions/Func8<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1181
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    new-instance p0, Lrx/Single$9;

    invoke-direct {p0, p8}, Lrx/Single$9;-><init>(Lrx/functions/Func8;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func7;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/Single<",
            "+TT7;>;",
            "Lrx/functions/Func7<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 1129
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    new-instance p0, Lrx/Single$8;

    invoke-direct {p0, p7}, Lrx/Single$8;-><init>(Lrx/functions/Func7;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func6;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/functions/Func6<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 1080
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    new-instance p0, Lrx/Single$7;

    invoke-direct {p0, p6}, Lrx/Single$7;-><init>(Lrx/functions/Func6;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func5;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/functions/Func5<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 1034
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    new-instance p0, Lrx/Single$6;

    invoke-direct {p0, p5}, Lrx/Single$6;-><init>(Lrx/functions/Func5;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func4;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/functions/Func4<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 992
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    new-instance p0, Lrx/Single$5;

    invoke-direct {p0, p4}, Lrx/Single$5;-><init>(Lrx/functions/Func4;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func3;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/functions/Func3<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 953
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    new-instance p0, Lrx/Single$4;

    invoke-direct {p0, p3}, Lrx/Single$4;-><init>(Lrx/functions/Func3;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/functions/Func2<",
            "-TT1;-TT2;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 917
    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, Lrx/Single$3;

    invoke-direct {p0, p2}, Lrx/Single$3;-><init>(Lrx/functions/Func2;)V

    invoke-static {v0, p0}, Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cache()Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 1326
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->cacheWithInitialCapacity(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lrx/Single$Transformer;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$Transformer<",
            "-TT;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 175
    invoke-interface {p1, p0}, Lrx/Single$Transformer;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Single;

    return-object p1
.end method

.method public final concatWith(Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1346
    invoke-static {p0, p1}, Lrx/Single;->concat(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2332
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Single;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2309
    new-instance v6, Lrx/internal/operators/SingleDelay;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    move-object v0, v6

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/SingleDelay;-><init>(Lrx/Single$OnSubscribe;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v6}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lrx/Observable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "*>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    if-nez p1, :cond_0

    .line 2674
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2676
    :cond_0
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther;-><init>(Lrx/Single;Lrx/Observable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Lrx/functions/Action0;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2420
    new-instance v0, Lrx/internal/operators/SingleDoAfterTerminate;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleDoAfterTerminate;-><init>(Lrx/Single;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEach(Lrx/functions/Action1;)Lrx/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lrx/Notification<",
            "+TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    if-nez p1, :cond_0

    .line 2223
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onNotification is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2226
    :cond_0
    new-instance v0, Lrx/internal/operators/SingleDoOnEvent;

    new-instance v1, Lrx/Single$15;

    invoke-direct {v1, p0, p1}, Lrx/Single$15;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    new-instance v2, Lrx/Single$16;

    invoke-direct {v2, p0, p1}, Lrx/Single$16;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/SingleDoOnEvent;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    if-nez p1, :cond_0

    .line 2194
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onError is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2197
    :cond_0
    new-instance v0, Lrx/internal/operators/SingleDoOnEvent;

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    new-instance v2, Lrx/Single$14;

    invoke-direct {v2, p0, p1}, Lrx/Single$14;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/SingleDoOnEvent;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lrx/functions/Action0;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2284
    new-instance v0, Lrx/internal/operators/SingleDoOnSubscribe;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleDoOnSubscribe;-><init>(Lrx/Single$OnSubscribe;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSuccess(Lrx/functions/Action1;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    if-nez p1, :cond_0

    .line 2257
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onSuccess is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2260
    :cond_0
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    .line 2261
    new-instance v1, Lrx/internal/operators/SingleDoOnEvent;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/SingleDoOnEvent;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-static {v1}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2398
    new-instance v0, Lrx/internal/operators/SingleDoOnUnsubscribe;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleDoOnUnsubscribe;-><init>(Lrx/Single$OnSubscribe;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Single<",
            "+TR;>;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1366
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_0

    .line 1367
    move-object v0, p0

    check-cast v0, Lrx/internal/util/ScalarSynchronousSingle;

    invoke-virtual {v0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 1369
    :cond_0
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p1

    invoke-static {p1}, Lrx/Single;->merge(Lrx/Single;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 1412
    new-instance v0, Lrx/internal/operators/CompletableFlatMapSingleToCompletable;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/CompletableFlatMapSingleToCompletable;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapObservable(Lrx/functions/Func1;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 1390
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final lift(Lrx/Observable$Operator;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator<",
            "+TR;-TT;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 150
    new-instance v0, Lrx/internal/operators/SingleLiftObservableOperator;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleLiftObservableOperator;-><init>(Lrx/Single$OnSubscribe;Lrx/Observable$Operator;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1432
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeMap;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOnSubscribeMap;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1453
    invoke-static {p0, p1}, Lrx/Single;->merge(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1475
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_0

    .line 1476
    move-object v0, p0

    check-cast v0, Lrx/internal/util/ScalarSynchronousSingle;

    invoke-virtual {v0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 1479
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scheduler is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1481
    :cond_1
    new-instance v0, Lrx/internal/operators/SingleObserveOn;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleObserveOn;-><init>(Lrx/Single$OnSubscribe;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lrx/Single;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 1545
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    move-result-object p1

    invoke-direct {v0, p1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 1579
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->withFunction(Lrx/Single;Lrx/functions/Func1;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    move-result-object p1

    invoke-direct {v0, p1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final onErrorReturn(Lrx/functions/Func1;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1511
    new-instance v0, Lrx/internal/operators/SingleOnErrorReturn;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleOnErrorReturn;-><init>(Lrx/Single$OnSubscribe;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 2483
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 2508
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 2532
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retry(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 2576
    invoke-virtual {p0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lrx/Subscription;
    .locals 2

    .line 1595
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    invoke-static {}, Lrx/functions/Actions;->errorNotImplemented()Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lrx/Single;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/Observer;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1724
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "observer is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1726
    :cond_0
    new-instance v0, Lrx/Single$12;

    invoke-direct {v0, p0, p1}, Lrx/Single$12;-><init>(Lrx/Single;Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1832
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "te is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1835
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-static {p0, v0}, Lrx/plugins/RxJavaHooks;->onSingleStart(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Single$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1836
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onSingleReturn(Lrx/Subscription;)Lrx/Subscription;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1838
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1841
    :try_start_1
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1852
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 1843
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1846
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occurred attempting to subscribe ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] and then again while trying to pass to onError."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1848
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1850
    throw v1
.end method

.method public final subscribe(Lrx/Subscriber;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1777
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "observer can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1781
    :cond_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 1788
    instance-of v0, p1, Lrx/observers/SafeSubscriber;

    if-nez v0, :cond_1

    .line 1790
    new-instance v0, Lrx/observers/SafeSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lrx/Single;->unsafeSubscribe(Lrx/Subscriber;Z)Lrx/Subscription;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 1792
    invoke-direct {p0, p1, v0}, Lrx/Single;->unsafeSubscribe(Lrx/Subscriber;Z)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .line 1615
    invoke-static {}, Lrx/functions/Actions;->errorNotImplemented()Lrx/functions/Action1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lrx/Single;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1639
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onSuccess can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 1642
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onError can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1645
    :cond_1
    new-instance v0, Lrx/Single$11;

    invoke-direct {v0, p0, p2, p1}, Lrx/Single$11;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1873
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v0, :cond_0

    .line 1874
    move-object v0, p0

    check-cast v0, Lrx/internal/util/ScalarSynchronousSingle;

    invoke-virtual {v0, p1}, Lrx/internal/util/ScalarSynchronousSingle;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 1876
    :cond_0
    new-instance v0, Lrx/Single$13;

    invoke-direct {v0, p0, p1}, Lrx/Single$13;-><init>(Lrx/Single;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lrx/Completable;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Completable;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1932
    new-instance v0, Lrx/internal/operators/SingleTakeUntilCompletable;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleTakeUntilCompletable;-><init>(Lrx/Single$OnSubscribe;Lrx/Completable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lrx/Observable;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TE;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1956
    new-instance v0, Lrx/internal/operators/SingleTakeUntilObservable;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleTakeUntilObservable;-><init>(Lrx/Single$OnSubscribe;Lrx/Observable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lrx/Single;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TE;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1978
    new-instance v0, Lrx/internal/operators/SingleTakeUntilSingle;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/SingleTakeUntilSingle;-><init>(Lrx/Single$OnSubscribe;Lrx/Single;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 2049
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 2074
    invoke-virtual/range {v0 .. v5}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;)Lrx/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 2098
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 2125
    new-instance p4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {p4}, Lrx/Single;->error(Ljava/lang/Throwable;)Lrx/Single;

    move-result-object p4

    .line 2127
    :cond_0
    new-instance v7, Lrx/internal/operators/SingleTimeout;

    iget-object v1, p0, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    iget-object v6, p4, Lrx/Single;->onSubscribe:Lrx/Single$OnSubscribe;

    move-object v0, v7

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/SingleTimeout;-><init>(Lrx/Single$OnSubscribe;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Single$OnSubscribe;)V

    invoke-static {v7}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final to(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Single<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 1991
    invoke-interface {p1, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toBlocking()Lrx/singles/BlockingSingle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/singles/BlockingSingle<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2142
    invoke-static {p0}, Lrx/singles/BlockingSingle;->from(Lrx/Single;)Lrx/singles/BlockingSingle;

    move-result-object v0

    return-object v0
.end method

.method public final toCompletable()Lrx/Completable;
    .locals 1
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .line 2026
    invoke-static {p0}, Lrx/Completable;->fromSingle(Lrx/Single;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 2002
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1684
    invoke-direct {p0, p1, v0}, Lrx/Single;->unsafeSubscribe(Lrx/Subscriber;Z)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/functions/Func2<",
            "-TT;-TT2;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 2170
    invoke-static {p0, p1, p2}, Lrx/Single;->zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method
