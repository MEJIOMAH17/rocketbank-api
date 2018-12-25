.class Lcom/google/android/gms/internal/zzaai$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaAI:Lcom/google/android/gms/internal/zzaai;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/internal/zzaai$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaai$zza;-><init>(Lcom/google/android/gms/internal/zzaai;)V

    return-void
.end method


# virtual methods
.method public zzc(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zzc(Lcom/google/android/gms/internal/zzaai;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zzd(Lcom/google/android/gms/internal/zzaai;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zzd(Lcom/google/android/gms/internal/zzaai;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;Z)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaai;->zze(Lcom/google/android/gms/internal/zzaai;)Lcom/google/android/gms/internal/zzaav;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzaav;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaai;->zzb(Lcom/google/android/gms/internal/zzaai;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public zzo(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaai;->zzb(Lcom/google/android/gms/internal/zzaai;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaai$zza;->zzaAI:Lcom/google/android/gms/internal/zzaai;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaai;->zza(Lcom/google/android/gms/internal/zzaai;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
