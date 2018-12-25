.class public abstract Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;
.super Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;
.source "MapPresenter.kt"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;",
        ">",
        "Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;",
        "Lcom/google/android/gms/maps/OnMapReadyCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapPresenter.kt\nru/rocketbank/r2d2/fragments/delivery/MapPresenter\n*L\n1#1,88:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final geolocationManager$delegate:Lkotlin/Lazy;

.field private lastLocation:Landroid/location/Location;

.field private locationSubscription:Lrx/Subscription;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private view:Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "geolocationManager"

    const-string v4, "getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;-><init>()V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$geolocationManager$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$geolocationManager$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->geolocationManager$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->geolocationManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/GeolocationManager;

    return-object v0
.end method

.method protected final getLastLocation()Landroid/location/Location;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method protected final getLocationSubscription()Lrx/Subscription;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->locationSubscription:Lrx/Subscription;

    return-object v0
.end method

.method protected final getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method protected final getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    return-object v0
.end method

.method protected final initLocation()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->getLocationUpdate()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    .line 31
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 32
    new-instance v1, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$initLocation$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter$initLocation$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->locationSubscription:Lrx/Subscription;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 61
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->onDestroy()V

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->locationSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    return-void
.end method

.method protected onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    const-string v0, "mapa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method public onPermissionsGranted()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->initLocation()V

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onLocationChanged(Landroid/location/Location;)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->update()V

    return-void
.end method

.method public onStart(Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    const-string v0, "MapPresenter"

    const-string v1, "checkPermitions"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    invoke-static {}, Lru/rocketbank/core/manager/GeolocationManager;->checkForPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "permissions"

    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;->checkPermissions(Ljava/util/List;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/GeolocationManager;->update()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->endLocationUpdate()V

    return-void
.end method

.method protected final setLastLocation(Landroid/location/Location;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->lastLocation:Landroid/location/Location;

    return-void
.end method

.method protected final setLocationSubscription(Lrx/Subscription;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->locationSubscription:Lrx/Subscription;

    return-void
.end method

.method protected final setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method protected final setView(Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->view:Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    return-void
.end method
