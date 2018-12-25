.class public Lcom/google/android/gms/flags/impl/zzb;
.super Ljava/lang/Object;


# static fields
.field private static zzaXu:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static zzn(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-class v0, Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/flags/impl/zzb;->zzaXu:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/flags/impl/zzb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/flags/impl/zzb$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaqf;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    sput-object p0, Lcom/google/android/gms/flags/impl/zzb;->zzaXu:Landroid/content/SharedPreferences;

    :cond_0
    sget-object p0, Lcom/google/android/gms/flags/impl/zzb;->zzaXu:Landroid/content/SharedPreferences;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
