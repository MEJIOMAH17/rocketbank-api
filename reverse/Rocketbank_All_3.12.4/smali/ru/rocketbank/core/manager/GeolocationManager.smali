.class public final Lru/rocketbank/core/manager/GeolocationManager;
.super Ljava/lang/Object;
.source "GeolocationManager.kt"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeolocationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeolocationManager.kt\nru/rocketbank/core/manager/GeolocationManager\n*L\n1#1,224:1\n*E\n"
.end annotation


# instance fields
.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private lastLocation:Landroid/location/Location;

.field private final locationUpdate:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private locationUpdateRequest:Lcom/google/android/gms/location/LocationRequest;

.field private locationUpdating:Z

.field private onLocationAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/location/Location;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:Z

.field private pendingSingleEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdate:Lrx/subjects/BehaviorSubject;

    .line 63
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 65
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 66
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 68
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdateRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 74
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdateRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 75
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdateRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 76
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdateRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 78
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static checkForPermissions()Z
    .locals 3

    .line 83
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 86
    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 87
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkGPSLocation(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gps"

    const-string v1, "location"

    .line 1100
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/location/LocationManager;

    .line 1101
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkNetLocation(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    const-string v1, "location"

    .line 2100
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/location/LocationManager;

    .line 2101
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static validatePermissionOrRequest(Z)Z
    .locals 5

    .line 142
    invoke-static {}, Lru/rocketbank/core/manager/GeolocationManager;->checkForPermissions()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 147
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p0

    new-instance v2, Lru/rocketbank/core/model/RequestPermissionEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v0

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v3, v1

    invoke-direct {v2, v3}, Lru/rocketbank/core/model/RequestPermissionEvent;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public final endLocationUpdate()V
    .locals 3

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdating:Z

    .line 130
    iget-object v1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    .line 131
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 133
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final getLocationUpdate()Lrx/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/BehaviorSubject<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdate:Lrx/subjects/BehaviorSubject;

    return-object v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/GeolocationManager;->update(Z)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public final onEvent(Lru/rocketbank/core/events/ResultPermissionEvent;)V
    .locals 4

    const-string v0, "permissionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->isPermitted()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 197
    :goto_0
    iget-object v1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    return-void

    .line 202
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lru/rocketbank/core/manager/GeolocationManager;->pendingSingleEvent:Z

    if-eqz p1, :cond_3

    .line 203
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const-wide/16 v1, 0x3a98

    .line 204
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    .line 205
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    .line 206
    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x1

    .line 207
    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    .line 209
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 211
    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/location/LocationListener;

    .line 209
    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_1

    .line 213
    :cond_3
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 214
    iget-object v2, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdateRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 215
    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/location/LocationListener;

    .line 213
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 218
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 221
    :goto_1
    iput-boolean v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->pendingAction:Z

    .line 222
    iput-boolean v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->pendingSingleEvent:Z

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->onLocationAction:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->onLocationAction:Lkotlin/jvm/functions/Function1;

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdate:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/manager/GeolocationManager;->lastLocation:Landroid/location/Location;

    return-void

    :cond_1
    return-void
.end method

.method public final startLocationUpdate()V
    .locals 4

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdating:Z

    .line 111
    iget-object v1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 112
    :goto_0
    invoke-static {}, Lru/rocketbank/core/manager/GeolocationManager;->checkForPermissions()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 115
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 116
    iget-object v2, p0, Lru/rocketbank/core/manager/GeolocationManager;->locationUpdateRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 117
    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/location/LocationListener;

    .line 115
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_1
    iput-boolean v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->pendingAction:Z

    :cond_2
    return-void
.end method

.method public final update()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lru/rocketbank/core/manager/GeolocationManager;->update(Z)V

    return-void
.end method

.method public final update(Z)V
    .locals 4

    .line 164
    iget-object v0, p0, Lru/rocketbank/core/manager/GeolocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_3

    .line 166
    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const-wide/16 v2, 0x2710

    .line 167
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1388

    .line 168
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const/16 v2, 0x64

    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x1

    .line 170
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p1}, Lru/rocketbank/core/manager/GeolocationManager;->validatePermissionOrRequest(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :try_start_0
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    .line 180
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/location/LocationListener;

    .line 178
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 182
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 186
    iput-boolean v2, p0, Lru/rocketbank/core/manager/GeolocationManager;->pendingSingleEvent:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateWithAction(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/location/Location;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onLocation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lru/rocketbank/core/manager/GeolocationManager;->onLocationAction:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 158
    invoke-virtual {p0, p1}, Lru/rocketbank/core/manager/GeolocationManager;->update(Z)V

    return-void
.end method
