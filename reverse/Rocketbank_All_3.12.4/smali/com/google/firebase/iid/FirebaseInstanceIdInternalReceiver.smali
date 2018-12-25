.class public final Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;


# static fields
.field private static zzbgs:Z = false

.field private static zzclp:Lcom/google/firebase/iid/zzb$zzc;

.field private static zzclq:Lcom/google/firebase/iid/zzb$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method static declared-synchronized zzL(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzc;
    .locals 2

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclq:Lcom/google/firebase/iid/zzb$zzc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/iid/zzb$zzc;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzb$zzc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclq:Lcom/google/firebase/iid/zzb$zzc;

    :cond_0
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclq:Lcom/google/firebase/iid/zzb$zzc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclp:Lcom/google/firebase/iid/zzb$zzc;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/firebase/iid/zzb$zzc;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzb$zzc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclp:Lcom/google/firebase/iid/zzb$zzc;

    :cond_2
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclp:Lcom/google/firebase/iid/zzb$zzc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static zzcs(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x19

    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "wrapped_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_1

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Missing or invalid wrapped intent"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    check-cast v0, Landroid/content/Intent;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzq()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzL(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzc;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/iid/zzb$zzc;->zza(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabW()Lcom/google/firebase/iid/zzg;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/firebase/iid/zzg;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    return-void
.end method
