.class final Lcom/google/android/gms/common/internal/zzab$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzab;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzab$zza;Lcom/google/android/gms/common/internal/zzab$zzb;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaGA:Lcom/google/android/gms/common/internal/zzab$zzb;

.field final synthetic zzaGx:Lcom/google/android/gms/common/api/PendingResult;

.field final synthetic zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzaGz:Lcom/google/android/gms/common/internal/zzab$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzab$zza;Lcom/google/android/gms/common/internal/zzab$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGx:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGz:Lcom/google/android/gms/common/internal/zzab$zza;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGA:Lcom/google/android/gms/common/internal/zzab$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGx:Lcom/google/android/gms/common/api/PendingResult;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGz:Lcom/google/android/gms/common/internal/zzab$zza;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/zzab$zza;->zzf(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzab$2;->zzaGA:Lcom/google/android/gms/common/internal/zzab$zzb;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/zzab$zzb;->zzH(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zza;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
