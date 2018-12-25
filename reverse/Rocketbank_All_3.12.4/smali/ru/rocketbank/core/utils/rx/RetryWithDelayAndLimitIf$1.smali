.class Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;
.super Ljava/lang/Object;
.source "RetryWithDelayAndLimitIf.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->call(Lrx/Observable;)Lrx/Observable;
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
.field final synthetic this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->call(Ljava/lang/Throwable;)Lrx/Observable;

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

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    invoke-static {v0}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->access$000(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)Lrx/functions/Func1;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    invoke-static {v0}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->access$100(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    invoke-static {v1}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->access$200(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 39
    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->access$108(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)I

    .line 40
    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->access$300(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)J

    move-result-wide v0

    iget-object p1, p0, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf$1;->this$0:Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    invoke-static {p1}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;->access$400(Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
