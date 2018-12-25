.class Lcom/google/android/gms/internal/zzaul$zza$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaul$zza;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

.field final synthetic zzbvV:Lcom/google/android/gms/internal/zzatt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaul$zza;Lcom/google/android/gms/internal/zzatt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvV:Lcom/google/android/gms/internal/zzatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaul$zza;->zza(Lcom/google/android/gms/internal/zzaul$zza;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaul$zza;->zzbvK:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaul;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaul$zza;->zzbvK:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaul$zza;->zzbvK:Lcom/google/android/gms/internal/zzaul;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$zza$3;->zzbvV:Lcom/google/android/gms/internal/zzatt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaul;->zza(Lcom/google/android/gms/internal/zzatt;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
