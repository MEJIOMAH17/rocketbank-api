.class public Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;
.super Ljava/lang/Object;
.source "RetryWithDelayAndLimitIf.java"

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

.field private retryCount:I

.field private retryLimit:I

.field private timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->retryLimit:I

    .line 22
    iput-wide p2, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->delay:J

    .line 23
    iput-object p4, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->timeUnit:Ljava/util/concurrent/TimeUnit;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->retryCount:I

    .line 25
    iput-object p5, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->ifFunction:Lrx/functions/Func1;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)Lrx/functions/Func1;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->ifFunction:Lrx/functions/Func1;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)I
    .locals 0

    .line 13
    iget p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->retryCount:I

    return p0
.end method

.method static synthetic access$108(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)I
    .locals 2

    .line 13
    iget v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->retryCount:I

    return v0
.end method

.method static synthetic access$200(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)I
    .locals 0

    .line 13
    iget p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->retryLimit:I

    return p0
.end method

.method static synthetic access$300(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->delay:J

    return-wide v0
.end method

.method static synthetic access$400(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->call(Lrx/Observable;)Lrx/Observable;

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

    .line 30
    new-instance v0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;-><init>(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
