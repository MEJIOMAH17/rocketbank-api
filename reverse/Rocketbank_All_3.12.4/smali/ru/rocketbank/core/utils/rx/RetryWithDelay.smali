.class public final Lru/rocketbank/core/utils/rx/RetryWithDelay;
.super Ljava/lang/Object;
.source "RetryWithDelay.kt"

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
.field private final mDelay:J

.field private mRetryCount:I

.field private final mRetryLimit:I

.field private final mTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "mTimeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mRetryLimit:I

    iput-wide p2, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mDelay:J

    iput-object p4, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mRetryCount:I

    return-void
.end method

.method public static final synthetic access$getMDelay$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mDelay:J

    return-wide v0
.end method

.method public static final synthetic access$getMRetryCount$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)I
    .locals 0

    .line 11
    iget p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mRetryCount:I

    return p0
.end method

.method public static final synthetic access$getMRetryLimit$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)I
    .locals 0

    .line 11
    iget p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mRetryLimit:I

    return p0
.end method

.method public static final synthetic access$getMTimeUnit$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 11
    iget-object p0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public static final synthetic access$setMRetryCount$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;I)V
    .locals 0

    .line 11
    iput p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/RetryWithDelay;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lrx/Observable;)Lrx/Observable;
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

    const-string v0, "attempts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;-><init>(Lru/rocketbank/core/utils/rx/RetryWithDelay;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const-string v0, "attempts.flatMap(Func1<k\u2026le>(throwable)\n        })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
