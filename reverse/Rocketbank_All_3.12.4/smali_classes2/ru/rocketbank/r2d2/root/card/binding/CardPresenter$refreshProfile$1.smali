.class public final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;
.super Lrx/Subscriber;
.source "CardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshProfile(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 455
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 456
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getRefreshSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p1, Lru/rocketbank/core/network/model/UserResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;->onNext(Lru/rocketbank/core/network/model/UserResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/UserResponse;)V
    .locals 0

    .line 460
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 461
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getRefreshSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :cond_0
    return-void
.end method
