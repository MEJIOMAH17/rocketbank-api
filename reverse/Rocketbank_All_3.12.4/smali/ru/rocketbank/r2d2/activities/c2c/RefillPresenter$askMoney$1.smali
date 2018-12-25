.class final Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RefillPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->askMoney(DLru/rocketbank/core/network/model/CardBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
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
        "Lru/rocketbank/core/model/card/Card2CardRefillResponseData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $amount:D

.field final synthetic $cardBody:Lru/rocketbank/core/network/model/CardBody;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;DLru/rocketbank/core/network/model/CardBody;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;

    iput-wide p2, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;->$amount:D

    iput-object p4, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;->$cardBody:Lru/rocketbank/core/network/model/CardBody;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;->invoke()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/card/Card2CardRefillResponseData;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object v0

    iget-wide v1, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;->$amount:D

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;->$cardBody:Lru/rocketbank/core/network/model/CardBody;

    invoke-interface {v0, v1, v2, v3}, Lru/rocketbank/core/network/api/Card2CardApi;->refillFromCardMoney(DLru/rocketbank/core/network/model/CardBody;)Lrx/Observable;

    move-result-object v0

    const-string v1, "card2CardApi.refillFromCardMoney(amount, cardBody)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
