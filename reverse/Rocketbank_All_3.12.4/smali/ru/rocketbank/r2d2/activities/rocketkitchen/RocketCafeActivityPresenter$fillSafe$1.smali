.class public final Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;
.super Lrx/Subscriber;
.source "RocketCafeActivityPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->fillSafe(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/cafe/Response<",
        "+",
        "Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;->this$0:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;->this$0:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->access$getView$p(Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;)Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;->onRefillError(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/network/model/cafe/Response;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;->onNext(Lru/rocketbank/core/network/model/cafe/Response;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/cafe/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/cafe/Response<",
            "Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/cafe/Response;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 41
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;->this$0:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->access$getView$p(Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;)Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;->onRefillOk()V

    :cond_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter$fillSafe$1;->this$0:Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;->access$getView$p(Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeActivityPresenter;)Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/cafe/Response;->getResponse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->getShowIt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/cafe/Response;->getResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/cafe/CafeRefillResponse;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    :goto_0
    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/activities/rocketkitchen/RocketCafeView;->onRefillError(Ljava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method
