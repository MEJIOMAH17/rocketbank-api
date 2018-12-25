.class final Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeAndCardTransferPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->sendMoneyDescription(Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
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
        "Lru/rocketbank/core/network/model/RefillCardResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $errorCallback$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $moveMoneyBody$inlined:Lru/rocketbank/core/network/model/MoveMoneyBody;

.field final synthetic $successCallback$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->$moveMoneyBody$inlined:Lru/rocketbank/core/network/model/MoveMoneyBody;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->$successCallback$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->$errorCallback$inlined:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->invoke()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/RefillCardResponse;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->access$getAccountApi$p(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;)Lru/rocketbank/core/network/api/AccountApi;

    move-result-object v1

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->$moveMoneyBody$inlined:Lru/rocketbank/core/network/model/MoveMoneyBody;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/MoveMoneyBody;->getAmount()D

    move-result-wide v2

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->$moveMoneyBody$inlined:Lru/rocketbank/core/network/model/MoveMoneyBody;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/MoveMoneyBody;->getCurrency()Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->$moveMoneyBody$inlined:Lru/rocketbank/core/network/model/MoveMoneyBody;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/MoveMoneyBody;->getFrom()Ljava/lang/String;

    move-result-object v5

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;->$moveMoneyBody$inlined:Lru/rocketbank/core/network/model/MoveMoneyBody;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/MoveMoneyBody;->getTo()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-interface/range {v1 .. v6}, Lru/rocketbank/core/network/api/AccountApi;->getBalanceAmount(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 68
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 69
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-string v1, "accountApi.getBalanceAmo\u2026scribeOn(Schedulers.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
