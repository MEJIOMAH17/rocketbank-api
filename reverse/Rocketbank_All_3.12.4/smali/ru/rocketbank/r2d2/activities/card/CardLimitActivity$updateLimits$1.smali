.class public final Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;
.super Lrx/Subscriber;
.source "CardLimitActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->updateLimits(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/PlasticLimits;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardLimitActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardLimitActivity.kt\nru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1\n*L\n1#1,233:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $onFail:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->$onFail:Lkotlin/jvm/functions/Function0;

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

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->$onFail:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->hideProgressDialog()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lru/rocketbank/core/network/model/PlasticLimits;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->onNext(Lru/rocketbank/core/network/model/PlasticLimits;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/PlasticLimits;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PlasticLimits;->getPlastic()Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;->getLimits()Lru/rocketbank/core/network/model/SexyLimits;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getAtm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCashOperation(Z)V

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getAtm_abroad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCashAbroadOperation(Z)V

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getPos()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCardOperation(Z)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getInternet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setInternetOperation(Z)V

    .line 131
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCurrentLimits(Lru/rocketbank/core/network/model/SexyLimits;)V

    .line 134
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->hideProgressDialog()V

    return-void
.end method
