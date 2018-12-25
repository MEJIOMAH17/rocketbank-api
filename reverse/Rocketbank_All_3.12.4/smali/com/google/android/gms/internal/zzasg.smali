.class public Lcom/google/android/gms/internal/zzasg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzasg$zza;,
        Lcom/google/android/gms/internal/zzasg$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaWg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzabh$zzb<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzasg$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzbkD:Landroid/content/ContentProviderClient;

.field private zzbkE:Z

.field private final zzbkF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzabh$zzb<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzasg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbks:Lcom/google/android/gms/internal/zzaso;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaso<",
            "Lcom/google/android/gms/internal/zzase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaso;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzaso<",
            "Lcom/google/android/gms/internal/zzase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbkD:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbkE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    return-void
.end method

.method private zzf(Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzasg$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;)",
            "Lcom/google/android/gms/internal/zzasg$zzb;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabh;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzasg$zzb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzasg$zzb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzasg$zzb;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabh;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zzg(Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzasg$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;)",
            "Lcom/google/android/gms/internal/zzasg$zza;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabh;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzasg$zza;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzasg$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzasg$zza;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabh;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzase;->zzeR(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAllListeners()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzasg$zzb;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzase;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzask;->zza(Lcom/google/android/gms/location/zzk;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzasg$zza;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzase;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzask;->zza(Lcom/google/android/gms/location/zzj;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzIp()Lcom/google/android/gms/location/LocationAvailability;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzase;->zzeS(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzIq()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbkE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzasg;->zzaG(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzask;->zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/internal/zzasc;)V
    .locals 2
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzaWg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzasg$zzb;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasg$zzb;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzase;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzask;->zza(Lcom/google/android/gms/location/zzk;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzasc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzasi;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzasg;->zzg(Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzasg$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzask;->zza(Lcom/google/android/gms/internal/zzasi;Lcom/google/android/gms/location/zzj;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzasi;->zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzasi;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzask;->zza(Lcom/google/android/gms/internal/zzasi;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzasg;->zzf(Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzasg$zzb;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzasi;->zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzasi;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzask;->zza(Lcom/google/android/gms/internal/zzasi;Lcom/google/android/gms/location/zzk;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public zzaG(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zzaG(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzasg;->zzbkE:Z

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/internal/zzasc;)V
    .locals 2
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzbkF:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzasg$zza;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasg$zza;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzase;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzask;->zza(Lcom/google/android/gms/location/zzj;Lcom/google/android/gms/internal/zzasc;)Lcom/google/android/gms/internal/zzask;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzase;->zza(Lcom/google/android/gms/internal/zzask;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzd(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg;->zzbks:Lcom/google/android/gms/internal/zzaso;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaso;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzase;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzase;->zzd(Landroid/location/Location;)V

    return-void
.end method
