.class public final Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;
.super Lrx/Subscriber;
.source "CardLimitActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->refreshLimits()V
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
    value = "SMAP\nCardLimitActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardLimitActivity.kt\nru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1\n*L\n1#1,233:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

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

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->hideProgressDialog()V

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->finish()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lru/rocketbank/core/network/model/PlasticLimits;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->onNext(Lru/rocketbank/core/network/model/PlasticLimits;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/PlasticLimits;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PlasticLimits;->getPlastic()Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;->getLimits()Lru/rocketbank/core/network/model/SexyLimits;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getAtm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCashOperation(Z)V

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getAtm_abroad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCashAbroadOperation(Z)V

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getPos()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCardOperation(Z)V

    .line 80
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/SexyLimits;->getInternet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setInternetOperation(Z)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setCurrentLimits(Lru/rocketbank/core/network/model/SexyLimits;)V

    .line 85
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->hideProgressDialog()V

    return-void
.end method
