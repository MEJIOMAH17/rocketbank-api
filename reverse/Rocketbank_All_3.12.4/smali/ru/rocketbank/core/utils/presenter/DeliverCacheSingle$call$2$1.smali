.class final Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$2$1;
.super Ljava/lang/Object;
.source "DeliverCacheSingle.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$2;->call(Lrx/Notification;)Lrx/Observable;
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
.field final synthetic $notification:Lrx/Notification;


# direct methods
.method constructor <init>(Lrx/Notification;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$2$1;->$notification:Lrx/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$2$1;->call(Ljava/lang/Object;)Lru/rocketbank/core/utils/presenter/Delivery;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Object;)Lru/rocketbank/core/utils/presenter/Delivery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lru/rocketbank/core/utils/presenter/Delivery<",
            "TR;TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_0
    new-instance v0, Lru/rocketbank/core/utils/presenter/Delivery;

    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$2$1;->$notification:Lrx/Notification;

    const-string v2, "notification"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lru/rocketbank/core/utils/presenter/Delivery;-><init>(Ljava/lang/Object;Lrx/Notification;)V

    return-object v0
.end method
