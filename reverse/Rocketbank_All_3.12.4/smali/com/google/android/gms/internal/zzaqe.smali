.class public final Lcom/google/android/gms/internal/zzaqe;
.super Ljava/lang/Object;


# static fields
.field private static zzaXl:Lcom/google/android/gms/internal/zzaqe;


# instance fields
.field private final zzaXm:Lcom/google/android/gms/internal/zzaqb;

.field private final zzaXn:Lcom/google/android/gms/internal/zzaqc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqe;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqe;->zza(Lcom/google/android/gms/internal/zzaqe;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzaqb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqe;->zzaXm:Lcom/google/android/gms/internal/zzaqb;

    new-instance v0, Lcom/google/android/gms/internal/zzaqc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqe;->zzaXn:Lcom/google/android/gms/internal/zzaqc;

    return-void
.end method

.method private static zzDD()Lcom/google/android/gms/internal/zzaqe;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzaqe;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzaqe;->zzaXl:Lcom/google/android/gms/internal/zzaqe;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zzDE()Lcom/google/android/gms/internal/zzaqb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzaqe;->zzDD()Lcom/google/android/gms/internal/zzaqe;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaqe;->zzaXm:Lcom/google/android/gms/internal/zzaqb;

    return-object v0
.end method

.method public static zzDF()Lcom/google/android/gms/internal/zzaqc;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzaqe;->zzDD()Lcom/google/android/gms/internal/zzaqe;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaqe;->zzaXn:Lcom/google/android/gms/internal/zzaqc;

    return-object v0
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzaqe;)V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzaqe;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/gms/internal/zzaqe;->zzaXl:Lcom/google/android/gms/internal/zzaqe;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
