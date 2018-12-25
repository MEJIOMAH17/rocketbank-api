.class public final Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "Sec3dPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/webauth/Sec3dAuthListener;


# instance fields
.field private final api:Lru/rocketbank/core/network/api/UserApi;

.field private authId:Ljava/lang/String;

.field private final calendar:Ljava/util/Calendar;

.field private final compositeSubscribers:Lrx/subscriptions/CompositeSubscription;

.field private createdAt:I

.field private final format:Ljava/text/SimpleDateFormat;

.field private timer:Landroid/os/CountDownTimer;

.field private ttl:I

.field private view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->authId:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->format:Ljava/text/SimpleDateFormat;

    const-string v0, "UTC"

    .line 23
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->calendar:Ljava/util/Calendar;

    .line 26
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->compositeSubscribers:Lrx/subscriptions/CompositeSubscription;

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->api:Lru/rocketbank/core/network/api/UserApi;

    return-void
.end method

.method public static final synthetic access$getCalendar$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Ljava/util/Calendar;
    .locals 0

    .line 15
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->calendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static final synthetic access$getFormat$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 15
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->format:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Lru/rocketbank/r2d2/activities/webauth/Sec3dView;
    .locals 0

    .line 15
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    return-object p0
.end method

.method public static final synthetic access$setView$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;Lru/rocketbank/r2d2/activities/webauth/Sec3dView;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    return-void
.end method

.method private final runRequest(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->showProgress()V

    .line 57
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$1;-><init>(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)V

    check-cast v0, Lrx/functions/Action1;

    .line 62
    new-instance v1, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$2;-><init>(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)V

    check-cast v1, Lrx/functions/Action1;

    .line 57
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->compositeSubscribers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method

.method private final stopTimer()V
    .locals 1

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->timer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final cancelClicked()V
    .locals 2

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->api:Lru/rocketbank/core/network/api/UserApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->authId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/UserApi;->cancel3dSec(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 42
    new-instance v1, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$cancelClicked$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$cancelClicked$1;-><init>(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)V

    check-cast v1, Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    const-string v1, "api.cancel3dSec(authId)\n\u2026ancel()\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->runRequest(Lrx/Observable;)V

    return-void
.end method

.method public final getAuthId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()I
    .locals 1

    .line 18
    iget v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->createdAt:I

    return v0
.end method

.method public final getTtl()I
    .locals 1

    .line 17
    iget v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->ttl:I

    return v0
.end method

.method public final notMeClicked()V
    .locals 2

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->api:Lru/rocketbank/core/network/api/UserApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->authId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/UserApi;->notMe3dSec(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    const-string v1, "api.notMe3dSec(authId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->runRequest(Lrx/Observable;)V

    return-void
.end method

.method public final onAttached(Lru/rocketbank/r2d2/activities/webauth/Sec3dView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    return-void
.end method

.method public final onDetached()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    .line 36
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->stopTimer()V

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->compositeSubscribers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    return-void
.end method

.method public final payClicked()V
    .locals 2

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->api:Lru/rocketbank/core/network/api/UserApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->authId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/UserApi;->confirm3dSec(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    const-string v1, "api.confirm3dSec(authId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->runRequest(Lrx/Observable;)V

    return-void
.end method

.method public final runTimer()V
    .locals 12

    .line 77
    iget v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->createdAt:I

    iget v1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->ttl:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-gtz v2, :cond_1

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->onTimeOut()V

    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 82
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->view:Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->updateButtons(Z)V

    .line 83
    :cond_3
    new-instance v0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;

    const-wide/16 v10, 0x64

    move-object v4, v0

    move-object v5, p0

    move-wide v6, v8

    invoke-direct/range {v4 .. v11}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;-><init>(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;JJJ)V

    check-cast v0, Landroid/os/CountDownTimer;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->timer:Landroid/os/CountDownTimer;

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->timer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final setAuthId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->authId:Ljava/lang/String;

    return-void
.end method

.method public final setCreatedAt(I)V
    .locals 0

    .line 18
    iput p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->createdAt:I

    return-void
.end method

.method public final setTtl(I)V
    .locals 0

    .line 17
    iput p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->ttl:I

    return-void
.end method
