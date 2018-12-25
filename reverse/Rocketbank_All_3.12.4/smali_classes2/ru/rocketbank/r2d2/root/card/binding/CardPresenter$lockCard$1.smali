.class public final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;
.super Lrx/Subscriber;
.source "CardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lockCard(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/CardBlockResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $onError:Lkotlin/jvm/functions/Function1;

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->$onError:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->$onError:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->getErrorString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getBlockSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 415
    check-cast p1, Lru/rocketbank/core/network/model/CardBlockResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->onNext(Lru/rocketbank/core/network/model/CardBlockResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/CardBlockResponse;)V
    .locals 1

    .line 425
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshProfile(Lkotlin/jvm/functions/Function0;)V

    .line 426
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getBlockSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :cond_0
    return-void
.end method
