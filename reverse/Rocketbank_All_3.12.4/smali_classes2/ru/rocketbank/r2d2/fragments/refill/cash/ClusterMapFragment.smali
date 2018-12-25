.class public abstract Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "ClusterMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;
    }
.end annotation


# static fields
.field private static final BUNDLE_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final BUNDLE_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final BUNDLE_ZOOM:Ljava/lang/String; = "zoom"

.field private static final DEFAULT_LATITUDE:D = 37.791116

.field private static final DEFAULT_LONGITUDE:D = -122.403816

.field private static final DEFAULT_ZOOM:I = 0xa

.field private static final REQUEST_CODE:I = 0xa


# instance fields
.field atmsManager:Lru/rocketbank/core/manager/AtmsManager;

.field private atsmSubscription:Lrx/Subscription;

.field private defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

.field geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

.field private isMapInitializationInProgres:Z

.field protected lastLocation:Landroid/location/Location;

.field private locationSubscription:Lrx/Subscription;

.field protected map:Lcom/google/android/gms/maps/GoogleMap;

.field private realm:Lio/realm/Realm;

.field private realmAtmClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;"
        }
    .end annotation
.end field

.field private realmClusterManager:Lio/realm/AtmRealmClusterManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/AtmRealmClusterManager<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;"
        }
    .end annotation
.end field

.field protected renderer:Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->renderer:Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;

    .line 71
    const-class v1, Lru/rocketbank/core/realm/RealmAtm;

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmAtmClass:Ljava/lang/Class;

    .line 83
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->isMapInitializationInProgres:Z

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;Lio/realm/Realm;)Lio/realm/Realm;
    .locals 0

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)Lio/realm/AtmRealmClusterManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmClusterManager:Lio/realm/AtmRealmClusterManager;

    return-object p0
.end method

.method private static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 323
    :goto_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 324
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 325
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 326
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    .line 327
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 328
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 329
    invoke-static {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 331
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    return-object v1
.end method

.method private getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .line 305
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->setUpMapIfNeeded()V

    .line 306
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method private maybeCloseRealm()V
    .locals 2

    .line 251
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atsmSubscription:Lrx/Subscription;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atsmSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atsmSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 253
    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atsmSubscription:Lrx/Subscription;

    .line 256
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    if-nez v0, :cond_1

    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 260
    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    return-void
.end method

.method private setUpMapIfNeeded()V
    .locals 2

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->isMapInitializationInProgres:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->isMapInitializationInProgres:Z

    .line 277
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090369

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->isMapInitializationInProgres:Z

    return-void

    .line 284
    :cond_3
    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 285
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method


# virtual methods
.method public getDefaultLatitude()D
    .locals 2

    const-wide v0, 0x4042e5434a01abd2L    # 37.791116

    return-wide v0
.end method

.method public getDefaultLongitude()D
    .locals 2

    const-wide v0, -0x3fa16627e0ef9980L    # -122.403816

    return-wide v0
.end method

.method public getDefaultZoom()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected abstract getLatitudeColumnName()Ljava/lang/String;
.end method

.method protected abstract getLongitudeColumnName()Ljava/lang/String;
.end method

.method protected abstract getTitleColumnName()Ljava/lang/String;
.end method

.method protected abstract getTypes()[Ljava/lang/String;
.end method

.method protected moveOnMyLocation()V
    .locals 6

    .line 472
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 475
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 476
    invoke-static {v1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 477
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public onClusterItemClicked$36ed8276(Lcom/getkeepsafe/relinker/ReLinker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getkeepsafe/relinker/ReLinker<",
            "Lru/rocketbank/core/realm/RealmAtm;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->locationSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->locationSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->locationSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 158
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090369

    .line 159
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 163
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 171
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    return-void
.end method

.method protected abstract onLocationChanged(Landroid/location/Location;)V
.end method

.method public onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 4

    .line 342
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 p1, 0x0

    .line 344
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->isMapInitializationInProgres:Z

    .line 346
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 348
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 349
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    move p1, v1

    :cond_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 373
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    goto :goto_2

    .line 359
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v0, :cond_4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 362
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 366
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0xa

    .line 371
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 384
    :goto_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    if-nez p1, :cond_6

    return-void

    .line 388
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    if-eqz p1, :cond_7

    .line 389
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    iget-wide v0, v0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->lat:D

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    iget-wide v2, v2, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->lon:D

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 390
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    iget v1, v1, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->zoom:F

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    const/4 p1, 0x0

    .line 391
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    goto :goto_3

    .line 393
    :cond_7
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getDefaultLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getDefaultLongitude()D

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 394
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getDefaultZoom()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 398
    :goto_3
    new-instance p1, Lio/realm/AtmRealmClusterManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/realm/AtmRealmClusterManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmClusterManager:Lio/realm/AtmRealmClusterManager;

    .line 400
    new-instance p1, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmClusterManager:Lio/realm/AtmRealmClusterManager;

    invoke-direct {p1, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lio/realm/AtmRealmClusterManager;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->renderer:Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;

    .line 401
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmClusterManager:Lio/realm/AtmRealmClusterManager;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->renderer:Lru/rocketbank/r2d2/fragments/refill/cash/AtmsClusterRenderer;

    invoke-virtual {p1, v0}, Lio/realm/AtmRealmClusterManager;->setRenderer(Lcom/google/maps/android/clustering/view/ClusterRenderer;)V

    .line 403
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmClusterManager:Lio/realm/AtmRealmClusterManager;

    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V

    invoke-virtual {p1, v0}, Lio/realm/AtmRealmClusterManager;->setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V

    .line 411
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmClusterManager:Lio/realm/AtmRealmClusterManager;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 412
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$4;-><init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 420
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$5;-><init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 427
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmClusterManager:Lio/realm/AtmRealmClusterManager;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 429
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->updateMap()V

    return-void
.end method

.method public onMarkerSelected(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 296
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 298
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 205
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    .line 207
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->maybeCloseRealm()V

    .line 208
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->endLocationUpdate()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 483
    array-length v0, p3

    move v1, p1

    move v2, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p3, v1

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    move v2, p2

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 487
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 489
    :try_start_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 197
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/core/manager/AtmsManager;->getConfiguration(Landroid/content/Context;)Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 176
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    const-string v1, "latitude"

    .line 180
    iget-object v2, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "longitude"

    .line 181
    iget-object v2, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "zoom"

    .line 182
    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 185
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->maybeCloseRealm()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 190
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->setUpMapIfNeeded()V

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/GeolocationManager;->startLocationUpdate()V

    .line 192
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getGeolocationManager()Lru/rocketbank/core/manager/GeolocationManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAtmsManager()Lru/rocketbank/core/manager/AtmsManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atmsManager:Lru/rocketbank/core/manager/AtmsManager;

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/core/manager/AtmsManager;->getConfiguration(Landroid/content/Context;)Lio/realm/RealmConfiguration;

    move-result-object p1

    invoke-static {p1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atmsManager:Lru/rocketbank/core/manager/AtmsManager;

    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/manager/AtmsManager;->recreateRealmWithListener(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V

    .line 107
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->setUpMapIfNeeded()V

    if-eqz p2, :cond_0

    .line 111
    new-instance p1, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    const-string v0, "latitude"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->lat:D

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    const-string v0, "longitude"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->lon:D

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    const-string v0, "zoom"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->zoom:F

    goto :goto_1

    .line 117
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/GeolocationManager;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    invoke-direct {p2}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    .line 121
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p2, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->lat:D

    .line 122
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p2, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->lon:D

    .line 123
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->defferedSettings:Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;

    const/high16 p2, 0x41600000    # 14.0f

    iput p2, p1, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$MapState;->zoom:F

    .line 128
    :cond_1
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->geolocationManager:Lru/rocketbank/core/manager/GeolocationManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/GeolocationManager;->getLocationUpdate()Lrx/subjects/BehaviorSubject;

    move-result-object p1

    .line 129
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/subjects/BehaviorSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V

    .line 130
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->locationSubscription:Lrx/Subscription;

    return-void
.end method

.method protected updateMap()V
    .locals 3

    .line 434
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atsmSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->unsubscribe(Lrx/Subscription;)V

    .line 440
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realm:Lio/realm/Realm;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->realmAtmClass:Ljava/lang/Class;

    .line 441
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "isHidden"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 442
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "type"

    .line 443
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->getTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->in(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lio/realm/RealmResults;->asObservable()Lrx/Observable;

    move-result-object v0

    .line 447
    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment$6;-><init>(Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/cash/ClusterMapFragment;->atsmSubscription:Lrx/Subscription;

    return-void
.end method
