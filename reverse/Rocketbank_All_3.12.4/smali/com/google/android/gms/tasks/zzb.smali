.class Lcom/google/android/gms/tasks/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/zzf<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final zzbFP:Ljava/util/concurrent/Executor;

.field private final zzbNs:Lcom/google/android/gms/tasks/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final zzbNt:Lcom/google/android/gms/tasks/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzh<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;",
            "Lcom/google/android/gms/tasks/zzh<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzb;->zzbFP:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzb;->zzbNs:Lcom/google/android/gms/tasks/Continuation;

    iput-object p3, p0, Lcom/google/android/gms/tasks/zzb;->zzbNt:Lcom/google/android/gms/tasks/zzh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/Continuation;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zzbNs:Lcom/google/android/gms/tasks/Continuation;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zzbNt:Lcom/google/android/gms/tasks/zzh;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzbFP:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzb$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzb$1;-><init>(Lcom/google/android/gms/tasks/zzb;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzbNt:Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzb;->zzbNt:Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzh;->setResult(Ljava/lang/Object;)V

    return-void
.end method
