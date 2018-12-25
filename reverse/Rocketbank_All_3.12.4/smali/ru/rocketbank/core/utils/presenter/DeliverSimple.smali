.class public final Lru/rocketbank/core/utils/presenter/DeliverSimple;
.super Ljava/lang/Object;
.source "DeliverSimple.kt"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Transformer<",
        "TT;",
        "Lru/rocketbank/core/utils/presenter/Delivery<",
        "TR;TT;>;>;"
    }
.end annotation


# instance fields
.field private final instanceId:I

.field private final targetObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Observable<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "targetObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/utils/presenter/DeliverSimple;->instanceId:I

    iput-object p2, p0, Lru/rocketbank/core/utils/presenter/DeliverSimple;->targetObservable:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/presenter/DeliverSimple;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/utils/presenter/Delivery<",
            "TR;TT;>;>;"
        }
    .end annotation

    const-string v0, "observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$1;-><init>(Lru/rocketbank/core/utils/presenter/DeliverSimple;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->switchMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 18
    sget-object v0, Lru/rocketbank/core/utils/presenter/DeliverSimple$call$2;->INSTANCE:Lru/rocketbank/core/utils/presenter/DeliverSimple$call$2;

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final getInstanceId()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/core/utils/presenter/DeliverSimple;->instanceId:I

    return v0
.end method

.method public final getTargetObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/DeliverSimple;->targetObservable:Lrx/Observable;

    return-object v0
.end method
