.class public final Lru/rocketbank/r2d2/root/operation/OperationPresenter;
.super Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;
.source "OperationPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationPresenter.kt\nru/rocketbank/r2d2/root/operation/OperationPresenter\n*L\n1#1,188:1\n*E\n"
.end annotation


# instance fields
.field private compensationSubsriotion:Lrx/Subscription;

.field private contextSubscription:Lrx/Subscription;

.field private final operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

.field private final operationId:J


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 2

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 25
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationId:J

    return-void
.end method

.method public static final synthetic access$getCompensationSubsriotion$p(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)Lrx/Subscription;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->compensationSubsriotion:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$refreshData(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->refreshData()V

    return-void
.end method

.method public static final synthetic access$setCompensationSubsriotion$p(Lru/rocketbank/r2d2/root/operation/OperationPresenter;Lrx/Subscription;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->compensationSubsriotion:Lrx/Subscription;

    return-void
.end method

.method private final prepareBaseData(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 2

    .line 151
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->sourceData(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    .line 153
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getHappenedAtCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->setDateString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->setPlaceName(Ljava/lang/String;)V

    return-void
.end method

.method private final refreshData()V
    .locals 4

    .line 68
    new-instance v0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;-><init>(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 70
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v1, :cond_1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getAnalytics()Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->getMerchant()Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->getMonths()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    .line 81
    :cond_0
    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->prepareAdapterData(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->setTotal(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;)V

    .line 82
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getMonthValues()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->setOperationContext(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 87
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->prepareBaseData(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->updateMoney()V

    .line 90
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->onOperationUpdate(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    return-void

    :cond_2
    return-void
.end method

.method private final sourceData(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->Card2CardCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v1, Lru/rocketbank/r2d2/root/operation/data/SourceViewData;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Operation;->getLinkedCard()Lru/rocketbank/core/model/card/LinkedCard;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/rocketbank/core/model/card/LinkedCard;->getFeedIconUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lru/rocketbank/r2d2/root/operation/data/SourceViewData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->setSourceData(Lru/rocketbank/r2d2/root/operation/data/SourceViewData;)V

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public final compensate()V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchShowProgress()V

    .line 104
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->compensationSubsriotion:Lrx/Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->compensationSubsriotion:Lrx/Subscription;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 108
    :cond_2
    new-instance v0, Lru/rocketbank/core/network/model/MilesCompensation;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/MilesCompensation;-><init>()V

    .line 109
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/network/model/MilesCompensation;->setId(J)V

    .line 111
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lru/rocketbank/core/network/api/RocketAPI;->convertFromMiles(JLru/rocketbank/core/network/model/MilesCompensation;)Lrx/Observable;

    move-result-object v0

    .line 112
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 113
    new-instance v1, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter$compensate$1;-><init>(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->compensationSubsriotion:Lrx/Subscription;

    return-void
.end method

.method public final getOperation()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getOperationFetched()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getOperationId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationId:J

    return-wide v0
.end method

.method public final isOperationFetched()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->contextSubscription:Lrx/Subscription;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final requestOperationDetail()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getOperationId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/OperationApi;->getContext(J)Lrx/Observable;

    move-result-object v0

    .line 35
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 36
    new-instance v1, Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter$requestOperationDetail$1;-><init>(Lru/rocketbank/r2d2/root/operation/OperationPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->contextSubscription:Lrx/Subscription;

    return-void
.end method

.method public final setOperationFetched(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public final updateMoney()V
    .locals 9

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    .line 162
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->getExchangeDetails()Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_3

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getExchangeDetails()Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 164
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v0

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->getFrom_amount()D

    move-result-wide v5

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->getFrom_currency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->isFullMoney()Z

    move-result v7

    invoke-virtual {v0, v5, v6, v3, v7}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v3

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->getTo_amount()D

    move-result-wide v5

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->getTo_currency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->isFullMoney()Z

    move-result v7

    invoke-virtual {v3, v5, v6, v4, v7}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2192

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 168
    :cond_3
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 169
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v0

    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v4

    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    const-string v6, "displayMoney.currencyCode"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->isFullMoney()Z

    move-result v6

    invoke-virtual {v0, v4, v5, v2, v6}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v2

    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v4

    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "displayMoney.currencyCode"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 172
    iget-object v4, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 173
    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v5

    invoke-virtual {v4}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v7

    cmpg-double v3, v5, v7

    if-eqz v3, :cond_5

    .line 174
    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v1

    invoke-virtual {v4}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v5

    invoke-virtual {v4}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "money.currencyCode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->isFullMoney()Z

    move-result v4

    invoke-virtual {v1, v5, v6, v3, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_5
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMimimiles()D

    move-result-wide v6

    goto :goto_1

    :cond_6
    move-wide v6, v4

    :goto_1
    cmpg-double v3, v6, v4

    if-eqz v3, :cond_8

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v1

    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMimimiles()D

    move-result-wide v3

    sget-object v5, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->isFullRocketMoney()Z

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lru/rocketbank/core/utils/MoneyFormatter;->formatWithSign(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/OperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3, v0, v1, v2}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->updateText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    return-void
.end method
