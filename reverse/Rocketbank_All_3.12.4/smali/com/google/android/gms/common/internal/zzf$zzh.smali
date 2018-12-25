.class public final Lcom/google/android/gms/common/internal/zzf$zzh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzh"
.end annotation


# instance fields
.field final synthetic zzaFu:Lcom/google/android/gms/common/internal/zzf;

.field private final zzaFx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzf;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFx:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    const/16 v0, 0x8

    :goto_0
    iget v1, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFx:I

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/Bundle;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzf;->zza(Lcom/google/android/gms/common/internal/zzf;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzv$zza;->zzbu(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzv;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/zzf;->zza(Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzv;)Lcom/google/android/gms/common/internal/zzv;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzf;->zza(Lcom/google/android/gms/common/internal/zzf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzf;->zza(Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzv;)Lcom/google/android/gms/common/internal/zzv;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFu:Lcom/google/android/gms/common/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/common/internal/zzf$zzh;->zzaFx:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
