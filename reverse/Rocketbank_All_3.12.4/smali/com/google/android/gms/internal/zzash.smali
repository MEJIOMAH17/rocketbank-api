.class public Lcom/google/android/gms/internal/zzash;
.super Lcom/google/android/gms/internal/zzarv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzash$zzc;,
        Lcom/google/android/gms/internal/zzash$zzb;,
        Lcom/google/android/gms/internal/zzash$zza;
    }
.end annotation


# instance fields
.field private final zzbkJ:Lcom/google/android/gms/internal/zzasg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzg;->zzaS(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzash;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzg;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzarv;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzg;)V

    new-instance p2, Lcom/google/android/gms/internal/zzasg;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzash;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/zzasg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaso;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasg;->removeAllListeners()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasg;->zzIq()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzarv;->disconnect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasg;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public zzIp()Lcom/google/android/gms/location/LocationAvailability;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasg;->zzIp()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public zza(JLandroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxC()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x1

    if-ltz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxD()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzase;

    invoke-interface {v1, p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzase;->zza(JZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzasg;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh$zzb<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzasc;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzasg;->zza(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/internal/zzasc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzasg;->zza(Lcom/google/android/gms/internal/zzasc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzasi;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzasc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzasi;",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzasc;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzasg;->zza(Lcom/google/android/gms/internal/zzasi;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzasc;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxC()V

    const-string v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzash$zza;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzash$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxD()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzase;

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasd;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzasg;->zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzasc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzasc;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzasg;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzasc;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxC()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzash$zzc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzash$zzc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxD()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzase;

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzasf;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/zzt;Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/zzt;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxC()V

    const-string v0, "removeGeofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzash$zzb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzash$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxD()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzase;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/location/zzt;Lcom/google/android/gms/internal/zzasd;)V

    return-void
.end method

.method public zzaG(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzasg;->zzaG(Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh$zzb<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzasc;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzasg;->zzb(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/internal/zzasc;)V

    return-void
.end method

.method public zzc(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxC()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzash;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zzc(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public zzd(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzash;->zzbkJ:Lcom/google/android/gms/internal/zzasg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzasg;->zzd(Landroid/location/Location;)V

    return-void
.end method
