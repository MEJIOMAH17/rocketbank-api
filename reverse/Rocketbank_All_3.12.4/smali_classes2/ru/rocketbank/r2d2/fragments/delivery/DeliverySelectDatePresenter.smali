.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;
.super Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;
.source "DeliverySelectDatePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliverySelectDatePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliverySelectDatePresenter.kt\nru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter\n*L\n1#1,123:1\n*E\n"
.end annotation


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private day:I

.field private deliverySubscription:Lrx/Subscription;

.field private month:I

.field private view:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final daySelected(Ljava/lang/String;III)V
    .locals 4

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->showProgressDialog()V

    .line 56
    :cond_0
    iput p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->day:I

    .line 57
    iput p3, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->month:I

    .line 58
    iput p4, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->year:I

    .line 59
    new-instance v0, Lru/rocketbank/core/network/model/delivery/DeliveryDateBody;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    const-string v3, "calendar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2, p3, p4}, Lru/rocketbank/core/manager/DeliveryManager;->getFormatedDate(Ljava/util/Calendar;III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lru/rocketbank/core/network/model/delivery/DeliveryDateBody;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->deliverySubscription:Lrx/Subscription;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lrx/Subscription;->unsubscribe()V

    .line 61
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;

    move-result-object p2

    new-instance p3, Lru/rocketbank/core/network/model/delivery/DeliveryBody;

    invoke-direct {p3, v0}, Lru/rocketbank/core/network/model/delivery/DeliveryBody;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, p3}, Lru/rocketbank/core/network/api/DeliveryApi;->getTimesByDate(Ljava/lang/String;Lru/rocketbank/core/network/model/delivery/DeliveryBody;)Lrx/Observable;

    move-result-object p1

    const-wide/16 p2, 0xa

    .line 62
    invoke-virtual {p1, p2, p3}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object p1

    .line 63
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 64
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 65
    new-instance p2, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$daySelected$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->deliverySubscription:Lrx/Subscription;

    return-void
.end method

.method public final getView()Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    return-object v0
.end method

.method public final nextPressed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intervalKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->showProgressDialog()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    const-string v2, "calendar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->day:I

    iget v3, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->month:I

    iget v4, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->year:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lru/rocketbank/core/manager/DeliveryManager;->getFormatedDate(Ljava/util/Calendar;III)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Lru/rocketbank/core/network/model/delivery/ScheduleDateBody;

    invoke-direct {v1, p2, v0}, Lru/rocketbank/core/network/model/delivery/ScheduleDateBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->deliverySubscription:Lrx/Subscription;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lrx/Subscription;->unsubscribe()V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;

    move-result-object p2

    new-instance v0, Lru/rocketbank/core/network/model/delivery/DeliveryBody;

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/delivery/DeliveryBody;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Lru/rocketbank/core/network/api/DeliveryApi;->scheduleDelivery(Ljava/lang/String;Lru/rocketbank/core/network/model/delivery/DeliveryBody;)Lrx/Observable;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 91
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object p1

    .line 92
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 93
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 94
    new-instance p2, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter$nextPressed$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->deliverySubscription:Lrx/Subscription;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/DeliveryManager;->getNearestDate()Ljava/util/Date;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 31
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    const-string v3, "calendar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 36
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->day:I

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->month:I

    .line 38
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->year:I

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    if-eqz p1, :cond_2

    .line 41
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    const-string v4, "calendar"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->setUpCalendar(Ljava/util/Calendar;)V

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/core/manager/DeliveryManager;->getIntervals()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 43
    invoke-interface {p1, v3}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->showNearestDayAndTime(Ljava/util/ArrayList;)V

    return-void

    .line 46
    :cond_1
    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;->showProgressDialog()V

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 49
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 50
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 47
    invoke-virtual {p0, p2, p1, v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->daySelected(Ljava/lang/String;III)V

    return-void

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->deliverySubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 120
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->onDestroy()V

    return-void
.end method

.method public final setView(Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    return-void
.end method
