.class public abstract Lru/rocketbank/core/utils/Interactor;
.super Ljava/lang/Object;
.source "Interactor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private subscription:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/utils/Interactor;->subscription:Lrx/Subscription;

    return-void
.end method

.method public static bridge synthetic execute$default(Lru/rocketbank/core/utils/Interactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-eqz p5, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: execute"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 19
    sget-object p2, Lru/rocketbank/core/utils/Interactor$execute$1;->INSTANCE:Lru/rocketbank/core/utils/Interactor$execute$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lru/rocketbank/core/utils/Interactor$execute$2;->INSTANCE:Lru/rocketbank/core/utils/Interactor$execute$2;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/utils/Interactor;->execute(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final execute(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onNext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/core/utils/Interactor;->getObservable()Lrx/Observable;

    move-result-object v0

    .line 21
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 22
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 23
    new-instance v1, Lru/rocketbank/core/utils/Interactor$sam$rx_functions_Action1$0;

    invoke-direct {v1, p1}, Lru/rocketbank/core/utils/Interactor$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lrx/functions/Action1;

    if-eqz p2, :cond_0

    new-instance p1, Lru/rocketbank/core/utils/Interactor$sam$rx_functions_Action1$0;

    invoke-direct {p1, p2}, Lru/rocketbank/core/utils/Interactor$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    check-cast p1, Lrx/functions/Action1;

    if-eqz p3, :cond_1

    new-instance p2, Lru/rocketbank/core/utils/Interactor$sam$rx_functions_Action0$0;

    invoke-direct {p2, p3}, Lru/rocketbank/core/utils/Interactor$sam$rx_functions_Action0$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    move-object p2, p3

    :goto_1
    check-cast p2, Lrx/functions/Action0;

    invoke-virtual {v0, v1, p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/utils/Interactor;->subscription:Lrx/Subscription;

    return-void
.end method

.method public abstract getObservable()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public unsubscribe()V
    .locals 2

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/utils/Interactor;->subscription:Lrx/Subscription;

    const-string v1, "subscription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/utils/Interactor;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    return-void
.end method
