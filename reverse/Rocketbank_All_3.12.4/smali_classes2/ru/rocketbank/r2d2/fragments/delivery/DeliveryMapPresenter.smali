.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;
.super Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;
.source "DeliveryMapPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;
.implements Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/fragments/delivery/MapPresenter<",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;",
        ">;",
        "Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;",
        "Lru/rocketbank/r2d2/data/binding/delivery/MapLocationListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryMapPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryMapPresenter.kt\nru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n1519#2:326\n1519#2,2:327\n1520#2:329\n*E\n*S KotlinDebug\n*F\n+ 1 DeliveryMapPresenter.kt\nru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter\n*L\n223#1:326\n223#1,2:327\n223#1:329\n*E\n"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private hideError:Z

.field private lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

.field private mapSubscription:Lrx/Subscription;

.field private final mapsApi:Lru/rocketbank/core/network/api/YandexMapApi;

.field private needScaleAfterCheckAddress:Z

.field private polygones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/adapter/LatLngList;",
            ">;"
        }
    .end annotation
.end field

.field private polygonsAdded:Z

.field private startPosition:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;-><init>()V

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getYandexMapApi()Lru/rocketbank/core/network/api/YandexMapApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapsApi:Lru/rocketbank/core/network/api/YandexMapApi;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->hideError:Z

    return-void
.end method

.method public static final synthetic access$checkAddressInPolygon(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->checkAddressInPolygon(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAddress$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->address:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "address"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getHideError$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->hideError:Z

    return p0
.end method

.method public static final synthetic access$getLastAddressCoordinates$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 33
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    if-nez p0, :cond_0

    const-string v0, "lastAddressCoordinates"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getNeedScaleAfterCheckAddress$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->needScaleAfterCheckAddress:Z

    return p0
.end method

.method public static final synthetic access$getPolygones$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Ljava/util/ArrayList;
    .locals 1

    .line 33
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->polygones:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const-string v0, "polygones"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getStartPosition$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 33
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->startPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public static final synthetic access$setAddress$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->address:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setHideError$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->hideError:Z

    return-void
.end method

.method public static final synthetic access$setLastAddressCoordinates$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public static final synthetic access$setNeedScaleAfterCheckAddress$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->needScaleAfterCheckAddress:Z

    return-void
.end method

.method public static final synthetic access$setPolygones$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Ljava/util/ArrayList;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->polygones:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setStartPosition$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->startPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public static final synthetic access$showAddressError(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->showAddressError()V

    return-void
.end method

.method public static final synthetic access$showMe(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->showMe(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method private final checkAddressInPolygon(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 3

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->polygones:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "polygones"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/adapter/LatLngList;

    .line 193
    check-cast v2, Ljava/util/List;

    invoke-static {p1, v2}, Lcom/google/maps/android/MarkerManager$Collection;->containsLocation$4399593d(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final showAddressError()V
    .locals 5

    .line 223
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 224
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->polygonsAdded:Z

    if-nez v1, :cond_3

    .line 225
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->polygones:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-string v2, "polygones"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    .line 326
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/adapter/LatLngList;

    .line 226
    new-instance v3, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const-string v4, "#FF00BBE4"

    .line 227
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    const-string v4, "#2000BBE4"

    .line 228
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    const/high16 v4, 0x40900000    # 4.5f

    .line 229
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    .line 230
    check-cast v2, Ljava/lang/Iterable;

    .line 327
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 231
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 235
    iput-boolean v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->polygonsAdded:Z

    :cond_3
    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 238
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->startPosition:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v2, 0x41180000    # 9.5f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 239
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 240
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->showAddressError()V

    :cond_4
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->hideError:Z

    return-void

    :cond_5
    return-void
.end method

.method private final showMe(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    :cond_0
    return-void
.end method

.method private final showMeAnimated(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkAddress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 137
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapsApi:Lru/rocketbank/core/network/api/YandexMapApi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1, v2}, Lru/rocketbank/core/network/api/YandexMapApi$DefaultImpls;->getAddressesByString$default(Lru/rocketbank/core/network/api/YandexMapApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 138
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 139
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 140
    new-instance v1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 147
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 148
    new-instance v1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$checkAddress$2;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;Ljava/lang/String;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapSubscription:Lrx/Subscription;

    return-void
.end method

.method public final checkLocationEnabled(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    invoke-static {p1}, Lru/rocketbank/core/manager/GeolocationManager;->checkGPSLocation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    invoke-static {p1}, Lru/rocketbank/core/manager/GeolocationManager;->checkNetLocation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->updateLocation()V

    .line 254
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->onLocationChecked()V

    :cond_2
    return-void

    .line 256
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->onLocationNotChecked()V

    return-void

    :cond_4
    return-void
.end method

.method public final loadDelivery(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->showProgressDialog()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/core/network/api/DeliveryApi;->getDelivery(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 266
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 267
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 268
    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$loadDelivery$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final onAddressClicked(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;)V
    .locals 2

    const-string v0, "geoObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->getTextAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->showSelectedAddress(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;->getPoint()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    .line 132
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    if-nez p1, :cond_1

    const-string v0, "lastAddressCoordinates"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->showMeAnimated(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public final onBackToAddressClicked()V
    .locals 5

    .line 175
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->setAddressStatus()V

    .line 177
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->address:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "address"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView$DefaultImpls;->updateAddress$default(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 180
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public final onCameraIdle(II)V
    .locals 5

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->needScaleAfterCheckAddress:Z

    .line 100
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapSubscription:Lrx/Subscription;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapsApi:Lru/rocketbank/core/network/api/YandexMapApi;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3, v4}, Lru/rocketbank/core/network/api/YandexMapApi$DefaultImpls;->getAddressByCoordinates$default(Lru/rocketbank/core/network/api/YandexMapApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 105
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 106
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 107
    new-instance v2, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0, p1, p2}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCameraIdle$$inlined$let$lambda$1;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;II)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapSubscription:Lrx/Subscription;

    return-void

    :cond_1
    return-void
.end method

.method public final onCommentClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->showProgressDialog()V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_1

    const-string v2, "lastAddressCoordinates"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/DeliveryManager;->setLat(D)V

    .line 289
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_2

    const-string v2, "lastAddressCoordinates"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/manager/DeliveryManager;->setLng(D)V

    .line 291
    new-instance v0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;

    .line 293
    iget-object v9, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->address:Ljava/lang/String;

    if-nez v9, :cond_3

    const-string v1, "address"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 294
    :cond_3
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_4

    const-string v2, "lastAddressCoordinates"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-wide v5, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 295
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->lastAddressCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_5

    const-string v2, "lastAddressCoordinates"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v3, v0

    move-object v4, p2

    .line 291
    invoke-direct/range {v3 .. v9}, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;

    move-result-object p2

    new-instance v1, Lru/rocketbank/core/network/model/delivery/DeliveryBody;

    invoke-direct {v1, v0}, Lru/rocketbank/core/network/model/delivery/DeliveryBody;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1, v1}, Lru/rocketbank/core/network/api/DeliveryApi;->selectAddress(Ljava/lang/String;Lru/rocketbank/core/network/model/delivery/DeliveryBody;)Lrx/Observable;

    move-result-object p1

    .line 297
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 298
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 299
    new-instance p2, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$onCommentClicked$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->initLocation()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 88
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onDestroy()V

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    return-void

    :cond_1
    return-void
.end method

.method protected final onLocationChanged(Landroid/location/Location;)V
    .locals 5

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getLocationSubscription()Lrx/Subscription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 247
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->showMe(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public final onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 5

    const-string v0, "mapa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const-string v0, "mapa.uiSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->showMe(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->startPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/rocketbank/core/manager/GeolocationManager;->update(Z)V

    .line 61
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->showMe(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    :cond_1
    return-void
.end method

.method public final onMyLocationButtonClicked()V
    .locals 6

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->showMeAnimated(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onPermissionsGranted()V
    .locals 2

    .line 67
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onPermissionsGranted()V

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 71
    :catch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getView()Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;

    if-eqz v0, :cond_1

    const v1, 0x7f11037c

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->showToast(I)V

    return-void

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 94
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/MapPresenter;->onStop()V

    .line 95
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getLocationSubscription()Lrx/Subscription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void

    :cond_0
    return-void
.end method

.method public final searchAddress(Ljava/lang/String;)V
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->needScaleAfterCheckAddress:Z

    .line 201
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapsApi:Lru/rocketbank/core/network/api/YandexMapApi;

    const-string v1, "json"

    invoke-interface {v0, v1, p1}, Lru/rocketbank/core/network/api/YandexMapApi;->getAddressesByString(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 202
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 203
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 204
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 205
    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$searchAddress$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter$searchAddress$1;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->mapSubscription:Lrx/Subscription;

    return-void
.end method

.method public final updateLocation()V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->update()V

    return-void
.end method
