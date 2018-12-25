.class public abstract Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;
.super Ljava/lang/Object;
.source "AbstractOperationPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractOperationPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractOperationPresenter.kt\nru/rocketbank/r2d2/root/operation/AbstractOperationPresenter\n*L\n1#1,282:1\n*E\n"
.end annotation


# instance fields
.field private feedManager:Lru/rocketbank/core/manager/FeedManager;

.field private isFullMoney:Z

.field private isFullRocketMoney:Z

.field private moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private operationApi:Lru/rocketbank/core/network/api/OperationApi;

.field private pendingClose:Z

.field private rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

.field private final simpleDateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMMM, HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 46
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFeedManager()Lru/rocketbank/core/manager/FeedManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    .line 47
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 48
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 49
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    return-void
.end method

.method public static final synthetic access$closeActivity(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->closeActivity()V

    return-void
.end method

.method private final closeActivity()V
    .locals 1

    .line 214
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchHideProgress()V

    .line 217
    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchClose()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->pendingClose:Z

    return-void
.end method

.method private final forAMonth(I)Ljava/lang/String;
    .locals 2

    .line 185
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid month "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_0
    const p1, 0x7f1101a6

    .line 199
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f1101ad

    .line 198
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f1101ae

    .line 197
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f1101af

    .line 196
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p1, 0x7f1101a5

    .line 195
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const p1, 0x7f1101a9

    .line 194
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const p1, 0x7f1101aa

    .line 193
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const p1, 0x7f1101ac

    .line 192
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    const p1, 0x7f1101a4

    .line 191
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    const p1, 0x7f1101ab

    .line 190
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    const p1, 0x7f1101a7

    .line 189
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    const p1, 0x7f1101a8

    .line 188
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public buildMonth(Ljava/util/Calendar;Ljava/util/Calendar;F)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;
    .locals 3

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "todayCalendar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->forAMonth(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 171
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 179
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    float-to-double p2, p3

    const-string v1, "rub"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public cancelOutOperation()V
    .locals 3

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchShowProgress()V

    .line 226
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getOperationId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/FeedManager;->cancelMoneyToFriend(J)Lrx/Observable;

    move-result-object v0

    .line 227
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 228
    new-instance v1, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$cancelOutOperation$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$cancelOutOperation$1;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public compensate()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 244
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchShowProgress()V

    .line 246
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getOperationId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/FeedManager;->sendMoneyToFriend(J)Lrx/Observable;

    move-result-object v0

    .line 247
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 248
    new-instance v1, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$confirm$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$confirm$1;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public decline()V
    .locals 3

    .line 264
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchShowProgress()V

    .line 266
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getOperationId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/FeedManager;->declineMoneyToFriend(J)Lrx/Observable;

    move-result-object v0

    .line 267
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 268
    new-instance v1, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$decline$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$decline$1;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final getFeedManager()Lru/rocketbank/core/manager/FeedManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method

.method public final getOperationApi()Lru/rocketbank/core/network/api/OperationApi;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    return-object v0
.end method

.method public abstract getOperationId()J
.end method

.method public final getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-object v0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final getUpdateListener()Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 210
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->hideKeyboard()V

    return-void

    :cond_0
    return-void
.end method

.method public final isFullMoney()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullMoney:Z

    return v0
.end method

.method public final isFullRocketMoney()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullRocketMoney:Z

    return v0
.end method

.method public abstract isOperationFetched()Z
.end method

.method public onMoneyPressed()V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullMoney:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateMoneyState(Z)V

    return-void
.end method

.method public onRocketMoneyPressed()V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullRocketMoney:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateRocketMoneyState(Z)V

    return-void
.end method

.method public onStart(Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    .line 56
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->pendingClose:Z

    if-nez p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isOperationFetched()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->requestOperationDetail()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->requestOperationDetail()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->closeActivity()V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateMoney()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->dispatchHideProgress()V

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    return-void
.end method

.method public final prepareAdapterData(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;
    .locals 10

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getAnalytics()Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getAnalytics()Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;->getMerchant()Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 109
    :cond_1
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 111
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->getMonths()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const-string v7, "monthCalendar"

    .line 112
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "todayCalendar"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "month"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v2, v0, v4}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->buildMonth(Ljava/util/Calendar;Ljava/util/Calendar;F)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object v4

    .line 113
    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getFullListValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x3

    .line 121
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->getMonths()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-ltz v3, :cond_6

    move v7, v4

    .line 123
    :goto_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->getMonths()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    const-string v9, "monthCalendar"

    .line 124
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "todayCalendar"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "month"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1, v2, v0, v8}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->buildMonth(Ljava/util/Calendar;Ljava/util/Calendar;F)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    move-result-object v8

    .line 125
    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->getShortListValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->add(II)V

    if-eq v7, v3, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 132
    :cond_6
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 134
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationAnalytics$MerchantAnalytics;->getTotal()F

    move-result p1

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    float-to-double v1, p1

    const-string p1, "rub"

    invoke-virtual {v0, v1, v2, p1, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1101a3

    .line 137
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 139
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    const-string v1, "forAllTime"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public refresh()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->requestOperationDetail()V

    return-void
.end method

.method public requestOperationDetail()V
    .locals 0

    return-void
.end method

.method public saveOperationComment(Ljava/lang/String;)V
    .locals 3

    const-string v0, "comment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->getOperationId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lru/rocketbank/core/network/api/OperationApi;->comment(JLjava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 144
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 145
    new-instance v1, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter$saveOperationComment$1;-><init>(Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;Ljava/lang/String;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;->scrollToPosition(I)V

    return-void

    :cond_0
    return-void
.end method

.method public final setFeedManager(Lru/rocketbank/core/manager/FeedManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->feedManager:Lru/rocketbank/core/manager/FeedManager;

    return-void
.end method

.method public final setFullMoney(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullMoney:Z

    return-void
.end method

.method public final setFullRocketMoney(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullRocketMoney:Z

    return-void
.end method

.method public final setMoneyFormatter(Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public final setOperationApi(Lru/rocketbank/core/network/api/OperationApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    return-void
.end method

.method public final setRocketApi(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method

.method public final setUpdateListener(Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateListener:Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;

    return-void
.end method

.method public updateMoney()V
    .locals 0

    return-void
.end method

.method public updateMoneyState(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullMoney:Z

    .line 73
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateMoney()V

    return-void
.end method

.method public updateRocketMoneyState(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->isFullRocketMoney:Z

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/AbstractOperationPresenter;->updateMoney()V

    return-void
.end method
