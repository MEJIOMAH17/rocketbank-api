.class public final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;
.super Lrx/Subscriber;
.source "CardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/TariffOptionsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isActive$inlined:Z

.field final synthetic $it:Lru/rocketbank/core/model/AccountModel;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->$it:Lru/rocketbank/core/model/AccountModel;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    iput-boolean p3, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->$isActive$inlined:Z

    .line 378
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

    .line 384
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->hideLoader()V

    :cond_0
    const-string v0, "CardPresenter"

    const-string v1, "Can not enable notifications"

    .line 385
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getTariffSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :cond_1
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, Lru/rocketbank/core/network/model/TariffOptionsResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->onNext(Lru/rocketbank/core/network/model/TariffOptionsResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/TariffOptionsResponse;)V
    .locals 1

    const-string v0, "tariffOptionsResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getView$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->hideLoader()V

    .line 392
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TariffOptionsResponse;->getTariffOption()Lru/rocketbank/core/model/OptionModel;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->$it:Lru/rocketbank/core/model/AccountModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/TariffModel;->setOption(Lru/rocketbank/core/model/OptionModel;)V

    .line 394
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getAuthorization$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->reloadProfile()V

    .line 395
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$getTariffSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :cond_2
    return-void
.end method
