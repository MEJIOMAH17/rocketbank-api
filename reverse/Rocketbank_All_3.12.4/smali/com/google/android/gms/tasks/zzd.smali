.class Lcom/google/android/gms/tasks/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/zzf<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final zzbFP:Ljava/util/concurrent/Executor;

.field private zzbNz:Lcom/google/android/gms/tasks/OnFailureListener;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzd;->zzbFP:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzd;->zzbNz:Lcom/google/android/gms/tasks/OnFailureListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tasks/zzd;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzd;->zzrJ:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tasks/zzd;)Lcom/google/android/gms/tasks/OnFailureListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzd;->zzbNz:Lcom/google/android/gms/tasks/OnFailureListener;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzbNz:Lcom/google/android/gms/tasks/OnFailureListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzbNz:Lcom/google/android/gms/tasks/OnFailureListener;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzbFP:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzd$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzd$1;-><init>(Lcom/google/android/gms/tasks/zzd;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
