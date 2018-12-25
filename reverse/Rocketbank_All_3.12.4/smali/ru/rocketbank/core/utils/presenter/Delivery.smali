.class public final Lru/rocketbank/core/utils/presenter/Delivery;
.super Ljava/lang/Object;
.source "Delivery.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final notification:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/Notification<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/Delivery;->target:Ljava/lang/Object;

    iput-object p2, p0, Lru/rocketbank/core/utils/presenter/Delivery;->notification:Lrx/Notification;

    return-void
.end method


# virtual methods
.method public final handle(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/Delivery;->notification:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 13
    iget-object p2, p0, Lru/rocketbank/core/utils/presenter/Delivery;->target:Ljava/lang/Object;

    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/Delivery;->notification:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/utils/presenter/Delivery;->notification:Lrx/Notification;

    invoke-virtual {p1}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object p1

    sget-object v0, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne p1, v0, :cond_2

    const-string p1, "Delivery"

    const-string v0, "Deliver error"

    .line 15
    iget-object v1, p0, Lru/rocketbank/core/utils/presenter/Delivery;->notification:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_2

    .line 16
    iget-object p1, p0, Lru/rocketbank/core/utils/presenter/Delivery;->target:Ljava/lang/Object;

    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/Delivery;->notification:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "notification.throwable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    return-void
.end method
