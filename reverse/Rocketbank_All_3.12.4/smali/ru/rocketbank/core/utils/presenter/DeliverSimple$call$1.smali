.class final Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1;
.super Ljava/lang/Object;
.source "DeliverSimple.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/presenter/DeliverSimple;->call(Lrx/Observable;)Lrx/Observable;
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
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/utils/presenter/DeliverSimple;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/presenter/DeliverSimple;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1;->this$0:Lru/rocketbank/core/utils/presenter/DeliverSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lrx/Notification;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1;->call(Lrx/Notification;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lrx/Notification;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification<",
            "TT;>;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/utils/presenter/Delivery<",
            "TR;TT;>;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1;->this$0:Lru/rocketbank/core/utils/presenter/DeliverSimple;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/presenter/DeliverSimple;->getTargetObservable()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1$1;

    invoke-direct {v1, p1}, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1$1;-><init>(Lrx/Notification;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
