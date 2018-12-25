.class final Lcom/google/android/gms/internal/zzbyy;
.super Ljava/lang/Object;


# static fields
.field static zzcyc:Lcom/google/android/gms/internal/zzbyx;

.field static zzcye:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzafZ()Lcom/google/android/gms/internal/zzbyx;
    .locals 8

    const-class v0, Lcom/google/android/gms/internal/zzbyy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzbyy;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzbyy;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    sput-object v2, Lcom/google/android/gms/internal/zzbyy;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    sget-wide v2, Lcom/google/android/gms/internal/zzbyy;->zzcye:J

    const-wide/16 v4, 0x2000

    sub-long v6, v2, v4

    sput-wide v6, Lcom/google/android/gms/internal/zzbyy;->zzcye:J

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/android/gms/internal/zzbyx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyx;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static zzb(Lcom/google/android/gms/internal/zzbyx;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyd:Lcom/google/android/gms/internal/zzbyx;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzcya:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/zzbyy;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/google/android/gms/internal/zzbyy;->zzcye:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v1, 0x10000

    cmp-long v7, v5, v1

    if-lez v7, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    sget-wide v1, Lcom/google/android/gms/internal/zzbyy;->zzcye:J

    add-long v5, v1, v3

    sput-wide v5, Lcom/google/android/gms/internal/zzbyy;->zzcye:J

    sget-object v1, Lcom/google/android/gms/internal/zzbyy;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbyx;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzbyx;->limit:I

    iput v1, p0, Lcom/google/android/gms/internal/zzbyx;->pos:I

    sput-object p0, Lcom/google/android/gms/internal/zzbyy;->zzcyc:Lcom/google/android/gms/internal/zzbyx;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
