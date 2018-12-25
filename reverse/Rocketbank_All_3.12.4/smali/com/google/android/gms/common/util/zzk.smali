.class public final Lcom/google/android/gms/common/util/zzk;
.super Ljava/lang/Object;


# static fields
.field private static zzaIe:Landroid/content/IntentFilter; = null

.field private static zzaIf:J = 0x0L

.field private static zzaIg:F = NaNf


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/util/zzk;->zzaIe:Landroid/content/IntentFilter;

    return-void
.end method

.method public static zzb(Landroid/os/PowerManager;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public static zzbd(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/common/util/zzk;->zzaIe:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v3, "plugged"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    const/4 v3, 0x7

    and-int/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_3

    return v0

    :cond_3
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzk;->zzb(Landroid/os/PowerManager;)Z

    move-result p0

    shl-int/2addr p0, v3

    or-int/2addr p0, v2

    return p0

    :cond_4
    return v0
.end method

.method public static declared-synchronized zzbe(Landroid/content/Context;)F
    .locals 7

    const-class v0, Lcom/google/android/gms/common/util/zzk;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/android/gms/common/util/zzk;->zzaIf:J

    sub-long v5, v1, v3

    const-wide/32 v1, 0xea60

    cmp-long v3, v5, v1

    if-gez v3, :cond_0

    sget v1, Lcom/google/android/gms/common/util/zzk;->zzaIg:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    sget p0, Lcom/google/android/gms/common/util/zzk;->zzaIg:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/util/zzk;->zzaIe:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    sput v1, Lcom/google/android/gms/common/util/zzk;->zzaIg:F

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/common/util/zzk;->zzaIf:J

    sget p0, Lcom/google/android/gms/common/util/zzk;->zzaIg:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
