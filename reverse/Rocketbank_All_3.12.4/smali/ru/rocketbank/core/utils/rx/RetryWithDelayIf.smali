.class public Lru/rocketbank/core/utils/rx/RetryWithDelayIf;
.super Ljava/lang/Object;
.source "RetryWithDelayIf.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable<",
        "+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private delay:J

.field private ifFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->delay:J

    .line 20
    iput-object p3, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 21
    iput-object p4, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->ifFunction:Lrx/functions/Func1;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)Lrx/functions/Func1;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->ifFunction:Lrx/functions/Func1;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->delay:J

    return-wide v0
.end method

.method static synthetic access$200(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;-><init>(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
