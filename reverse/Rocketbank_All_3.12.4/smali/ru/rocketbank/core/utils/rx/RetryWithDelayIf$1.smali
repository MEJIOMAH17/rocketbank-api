.class Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;
.super Ljava/lang/Object;
.source "RetryWithDelayIf.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayIf;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;->call(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayIf;

    invoke-static {v0}, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->access$000(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)Lrx/functions/Func1;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayIf;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->access$100(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)J

    move-result-wide v0

    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayIf;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayIf;->access$200(Lru/rocketbank/core/utils/rx/RetryWithDelayIf;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
