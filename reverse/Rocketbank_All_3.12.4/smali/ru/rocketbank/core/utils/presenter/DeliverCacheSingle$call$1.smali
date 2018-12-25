.class final Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$1;
.super Ljava/lang/Object;
.source "DeliverCacheSingle.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->call(Lrx/Observable;)Lrx/Observable;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$1;->this$0:Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$1;->this$0:Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->getRequestCache()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$1;->this$0:Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;

    invoke-virtual {v1}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->getInstanceId()I

    move-result v1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method
