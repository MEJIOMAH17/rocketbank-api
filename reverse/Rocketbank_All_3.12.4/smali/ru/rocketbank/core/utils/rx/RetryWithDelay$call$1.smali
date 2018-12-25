.class final Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;
.super Ljava/lang/Object;
.source "RetryWithDelay.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/rx/RetryWithDelay;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/utils/rx/RetryWithDelay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/rx/RetryWithDelay;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;->call(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Throwable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelay;

    invoke-static {v0}, Lru/rocketbank/core/utils/rx/RetryWithDelay;->access$getMRetryCount$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelay;

    invoke-static {v1}, Lru/rocketbank/core/utils/rx/RetryWithDelay;->access$getMRetryLimit$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 21
    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelay;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelay;->access$getMRetryCount$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/core/utils/rx/RetryWithDelay;->access$setMRetryCount$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;I)V

    .line 22
    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelay;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelay;->access$getMDelay$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)J

    move-result-wide v0

    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelay$call$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelay;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelay;->access$getMTimeUnit$p(Lru/rocketbank/core/utils/rx/RetryWithDelay;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
