.class public final Lru/rocketbank/r2d2/service/SendLocationIntentService;
.super Landroid/app/IntentService;
.source "SendLocationIntentService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/service/SendLocationIntentService$Companion;
    }
.end annotation


# static fields
.field private static final ACTION_LOCATION:Ljava/lang/String; = "ru.rocketbank.r2d2.service.action.LOCATION"

.field public static final Companion:Lru/rocketbank/r2d2/service/SendLocationIntentService$Companion;

.field private static final EXTRA_ID:Ljava/lang/String; = "ID"


# instance fields
.field public authorization:Lru/rocketbank/core/user/Authorization;

.field public geoLocation:Lru/rocketbank/core/manager/GeolocationManager;

.field public operationApi:Lru/rocketbank/core/network/api/OperationApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/service/SendLocationIntentService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/service/SendLocationIntentService$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->Companion:Lru/rocketbank/r2d2/service/SendLocationIntentService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SendLocationIntentService"

    .line 26
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getACTION_LOCATION$cp()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->ACTION_LOCATION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_ID$cp()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->EXTRA_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onLocation(Lru/rocketbank/r2d2/service/SendLocationIntentService;JLandroid/location/Location;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/service/SendLocationIntentService;->onLocation(JLandroid/location/Location;)V

    return-void
.end method

.method private final onLocation(JLandroid/location/Location;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v8, Lru/rocketbank/core/network/model/CoordinatesBody;

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    .line 69
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 70
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, v8

    move-wide v6, p1

    .line 68
    invoke-direct/range {v0 .. v7}, Lru/rocketbank/core/network/model/CoordinatesBody;-><init>(FDDJ)V

    .line 73
    iget-object p3, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    if-nez p3, :cond_1

    const-string v0, "operationApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p3, p1, p2, v8}, Lru/rocketbank/core/network/api/OperationApi;->sendCoordinates(JLru/rocketbank/core/network/model/CoordinatesBody;)Lrx/Observable;

    move-result-object p1

    .line 74
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 75
    new-instance p2, Lru/rocketbank/r2d2/service/SendLocationIntentService$onLocation$1;

    invoke-direct {p2}, Lru/rocketbank/r2d2/service/SendLocationIntentService$onLocation$1;-><init>()V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getGeoLocation()Lru/rocketbank/core/manager/GeolocationManager;
    .locals 2

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->geoLocation:Lru/rocketbank/core/manager/GeolocationManager;

    if-nez v0, :cond_0

    const-string v1, "geoLocation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getOperationApi()Lru/rocketbank/core/network/api/OperationApi;
    .locals 2

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    if-nez v0, :cond_0

    const-string v1, "operationApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 34
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    .line 37
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 38
    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->geoLocation:Lru/rocketbank/core/manager/GeolocationManager;

    return-void
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/service/SendLocationIntentService;->ACTION_LOCATION:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    sget-object v0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->EXTRA_ID:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    .line 49
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez p1, :cond_0

    const-string v0, "authorization"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 53
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->geoLocation:Lru/rocketbank/core/manager/GeolocationManager;

    if-nez p1, :cond_2

    const-string v0, "geoLocation"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;

    invoke-direct {v0, p0, v3, v4}, Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;-><init>(Lru/rocketbank/r2d2/service/SendLocationIntentService;J)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/manager/GeolocationManager;->updateWithAction(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setGeoLocation(Lru/rocketbank/core/manager/GeolocationManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->geoLocation:Lru/rocketbank/core/manager/GeolocationManager;

    return-void
.end method

.method public final setOperationApi(Lru/rocketbank/core/network/api/OperationApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService;->operationApi:Lru/rocketbank/core/network/api/OperationApi;

    return-void
.end method
