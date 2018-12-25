.class final Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferAmountPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->outcomeCommission(DLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lrx/Observable<",
        "Lru/rocketbank/core/model/response/CommissionStringResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $amount:D

.field final synthetic $cardNumber:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    iput-wide p2, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->$amount:D

    iput-object p4, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->$cardNumber:Ljava/lang/String;

    iput-object p5, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->$token:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->invoke()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/response/CommissionStringResponse;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object v0

    iget-wide v1, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->$amount:D

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->$cardNumber:Ljava/lang/String;

    iget-object v4, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;->$token:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lru/rocketbank/core/network/api/Card2CardApi;->getOutComeCommission(DLjava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "card2CardApi.getOutComeC\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
