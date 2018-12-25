.class Lcom/google/android/gms/internal/zzaar$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzaBA:Lcom/google/android/gms/internal/zzaar;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/internal/zzaar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaar$zze;-><init>(Lcom/google/android/gms/internal/zzaar;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/internal/zzaar;)Lcom/google/android/gms/internal/zzbai;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzaar$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaar$zzd;-><init>(Lcom/google/android/gms/internal/zzaar;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbai;->zza(Lcom/google/android/gms/internal/zzbap;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaar;->zzc(Lcom/google/android/gms/internal/zzaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaar;->zzb(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaar;->zzi(Lcom/google/android/gms/internal/zzaar;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaar;->zzj(Lcom/google/android/gms/internal/zzaar;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaar;->zza(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaar;->zzc(Lcom/google/android/gms/internal/zzaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar$zze;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaar;->zzc(Lcom/google/android/gms/internal/zzaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
