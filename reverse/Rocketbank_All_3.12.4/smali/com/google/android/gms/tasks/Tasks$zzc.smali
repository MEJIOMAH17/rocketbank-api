.class final Lcom/google/android/gms/tasks/Tasks$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Tasks$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private final zzbNF:Lcom/google/android/gms/tasks/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzh<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzbNK:Ljava/lang/Exception;

.field private final zzbNM:I

.field private zzbNN:I

.field private zzbNO:I

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/zzh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/zzh<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzrJ:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNM:I

    iput-object p2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNF:Lcom/google/android/gms/tasks/zzh;

    return-void
.end method

.method private zzTL()V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNN:I

    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNO:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNM:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNK:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNF:Lcom/google/android/gms/tasks/zzh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzh;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNF:Lcom/google/android/gms/tasks/zzh;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNO:I

    iget v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNM:I

    const/16 v4, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNK:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNO:I

    iput-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNK:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzTL()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzbNN:I

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzTL()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
