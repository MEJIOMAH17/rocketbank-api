.class public final Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;
.super Ljava/lang/Object;
.source "DeliverCacheSingle.kt"

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

.field private final requestCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final targetObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/util/SparseArray;Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;",
            "Lrx/Observable<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "requestCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetObservable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->instanceId:I

    iput-object p2, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->requestCache:Landroid/util/SparseArray;

    iput-object p3, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->targetObservable:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->call(Lrx/Observable;)Lrx/Observable;

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

    .line 12
    new-instance v0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$1;-><init>(Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$2;-><init>(Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->switchMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 25
    sget-object v0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;->INSTANCE:Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final getInstanceId()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->instanceId:I

    return v0
.end method

.method public final getRequestCache()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->requestCache:Landroid/util/SparseArray;

    return-object v0
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

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->targetObservable:Lrx/Observable;

    return-object v0
.end method
