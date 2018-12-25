.class public final Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;
.super Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;
.source "RocketRubleOperationPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketRubleOperationPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketRubleOperationPresenter.kt\nru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter\n*L\n1#1,114:1\n*E\n"
.end annotation


# instance fields
.field private compensationSubsriotion:Lrx/Subscription;

.field private contextResponseFetched:Lru/rocketbank/core/network/model/ContextResponse;

.field private contextSubscription:Lrx/Subscription;

.field private final operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public static final synthetic access$refreshData(Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->refreshData()V

    return-void
.end method

.method private final prepareBaseData(Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;)V
    .locals 2

    .line 82
    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->sourceData(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getHappenedAtCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->setDateString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->setPlaceName(Ljava/lang/String;)V

    return-void
.end method

.method private final refreshData()V
    .locals 5

    .line 53
    new-instance v0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;-><init>(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 55
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v1, :cond_2

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v3

    sget-object v4, Lru/rocketbank/core/network/model/operation/OperationContextType;->MilesCashBack:Lru/rocketbank/core/network/model/operation/OperationContextType;

    if-ne v3, v4, :cond_1

    .line 59
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getAnalytics()Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->getMerchant()Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->getMonths()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    .line 66
    :cond_0
    move-object v3, v0

    check-cast v3, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;

    invoke-virtual {p0, v1, v3}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->prepareAdapterData(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->setTotal(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;)V

    .line 69
    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->getMonthValues()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getShopItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->setShopItems(Ljava/util/List;)V

    .line 71
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->setDescription(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getParent_operation()Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->setParentOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 75
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->setOperationContext(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 76
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->prepareBaseData(Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;)V

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;

    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->onOperationUpdate(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V

    return-void

    :cond_3
    return-void
.end method

.method private final sourceData(Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/network/model/operation/OperationContextType;->Card2CardCashIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getContextResponseFetched()Lru/rocketbank/core/network/model/ContextResponse;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->contextResponseFetched:Lru/rocketbank/core/network/model/ContextResponse;

    return-object v0
.end method

.method public final getOperation()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getOperationFetched()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getOperationId()J
    .locals 2

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isOperationFetched()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->contextSubscription:Lrx/Subscription;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final requestOperationDetail()V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getOperationId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/OperationApi;->getContext(J)Lrx/Observable;

    move-result-object v0

    .line 36
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 37
    new-instance v1, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter$requestOperationDetail$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter$requestOperationDetail$1;-><init>(Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->contextSubscription:Lrx/Subscription;

    return-void
.end method

.method public final setContextResponseFetched(Lru/rocketbank/core/network/model/ContextResponse;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->contextResponseFetched:Lru/rocketbank/core/network/model/ContextResponse;

    return-void
.end method

.method public final setOperationFetched(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operationFetched:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public final updateMoney()V
    .locals 8

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Operation;->getMimimiles()D

    move-result-wide v0

    .line 98
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Operation;->getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v2

    sget-object v3, Lru/rocketbank/core/network/model/operation/OperationContextType;->MilesCashBack:Lru/rocketbank/core/network/model/operation/OperationContextType;

    if-ne v2, v3, :cond_3

    .line 99
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v5

    sget-object v6, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->isFullRocketMoney()Z

    move-result v7

    invoke-virtual {v5, v0, v1, v6, v7}, Lru/rocketbank/core/utils/MoneyFormatter;->formatWithSign(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v1

    const-string v5, "currencyCode"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->isFullMoney()Z

    move-result v5

    invoke-virtual {v1, v3, v4, v2, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v2, v6}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v1, v0, v2}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->updateText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 108
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v2

    sget-object v3, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 2105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->isFullMoney()Z

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/RocketRubleOperationPresenter;->getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getAmountString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->updateText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    return-void
.end method
