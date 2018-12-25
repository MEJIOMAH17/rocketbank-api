.class public Lcom/google/android/gms/internal/zzbay;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "WakeLock"

.field private static zzbEy:Ljava/lang/String; = "*gcore*:"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaHF:Ljava/lang/String;

.field private final zzaHH:Ljava/lang/String;

.field private final zzbEA:I

.field private final zzbEB:Ljava/lang/String;

.field private zzbEC:Z

.field private zzbED:I

.field private zzbEE:I

.field private final zzbEz:Landroid/os/PowerManager$WakeLock;

.field private zzbjl:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbay;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbay;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEC:Z

    const-string v0, "Wake lock name can NOT be empty"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzbay;->zzbEA:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbay;->zzbEB:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbay;->zzaHH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbay;->mContext:Landroid/content/Context;

    const-string p4, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    sget-object p4, Lcom/google/android/gms/internal/zzbay;->zzbEy:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p4, p6

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzbay;->zzaHF:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/internal/zzbay;->zzaHF:Ljava/lang/String;

    :goto_1
    const-string p4, "power"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PowerManager;

    invoke-virtual {p4, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbay;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/util/zzz;->zzbf(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p5}, Lcom/google/android/gms/common/util/zzw;->zzdz(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :cond_2
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/zzz;->zzG(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbay;->zzc(Landroid/os/WorkSource;)V

    :cond_3
    return-void
.end method

.method private zzd(Landroid/os/WorkSource;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/gms/internal/zzbay;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private zzgM(Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbay;->zzgN(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbay;->zzo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEC:Z

    const/4 v10, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbED:I

    sub-int/2addr p1, v10

    iput p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbED:I

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEC:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEE:I

    if-ne p1, v10, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzyX()Lcom/google/android/gms/common/stats/zze;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbay;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1, v6}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbay;->zzaHF:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbay;->zzaHH:Ljava/lang/String;

    iget v8, p0, Lcom/google/android/gms/internal/zzbay;->zzbEA:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzz;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEE:I

    sub-int/2addr p1, v10

    iput p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEE:I

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zzgN(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private zzo(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEC:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEB:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEB:Ljava/lang/String;

    return-object p1
.end method

.method private zzo(Ljava/lang/String;J)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbay;->zzgN(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbay;->zzo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEC:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbED:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzbay;->zzbED:I

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEC:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEE:I

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzyX()Lcom/google/android/gms/common/stats/zze;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbay;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1, v6}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbay;->zzaHF:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbay;->zzaHH:Ljava/lang/String;

    iget v8, p0, Lcom/google/android/gms/internal/zzbay;->zzbEA:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzz;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v9

    move-wide v10, p2

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEE:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEE:I

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public acquire(J)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzg()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzbay;->zzo(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public isHeld()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbay;->zzgM(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbEz:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbEC:Z

    return-void
.end method

.method public zzc(Landroid/os/WorkSource;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzz;->zzbf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbay;->zzbjl:Landroid/os/WorkSource;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbay;->zzd(Landroid/os/WorkSource;)V

    :cond_1
    return-void
.end method
