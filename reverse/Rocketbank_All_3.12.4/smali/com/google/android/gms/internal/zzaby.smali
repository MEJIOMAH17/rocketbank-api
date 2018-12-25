.class public Lcom/google/android/gms/internal/zzaby;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaby$zza;,
        Lcom/google/android/gms/internal/zzaby$zzb;
    }
.end annotation


# static fields
.field public static final zzaDu:Lcom/google/android/gms/common/api/Status;

.field private static final zzaDv:[Lcom/google/android/gms/internal/zzaaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/zzaaf<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaBQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field final zzaDw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzaaf<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaDx:Lcom/google/android/gms/internal/zzaby$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The connection to Google Play services was lost"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzaby;->zzaDu:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaaf;

    sput-object v0, Lcom/google/android/gms/internal/zzaby;->zzaDv:[Lcom/google/android/gms/internal/zzaaf;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzaDw:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzaby$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaby$1;-><init>(Lcom/google/android/gms/internal/zzaby;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzaDx:Lcom/google/android/gms/internal/zzaby$zzb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaby;->zzaBQ:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaby;)Lcom/google/android/gms/common/api/zzf;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaf<",
            "*>;",
            "Lcom/google/android/gms/common/api/zzf;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaby$zza;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzaby$zza;-><init>(Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzaby$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zza(Lcom/google/android/gms/internal/zzaby$zzb;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaby$zza;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzaby$zza;-><init>(Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzaby$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zza(Lcom/google/android/gms/internal/zzaby$zzb;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->zzvr()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/zzf;->remove(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaaf;->zza(Lcom/google/android/gms/internal/zzaby$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->zzvr()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/zzf;->remove(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, " mUnconsumedApiCalls.size()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzaDw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public release()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzaDw:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/zzaby;->zzaDv:[Lcom/google/android/gms/internal/zzaaf;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzaaf;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzaaf;->zza(Lcom/google/android/gms/internal/zzaby$zzb;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaaf;->zzvr()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaaf;->zzvF()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaaf;->zzvH()V

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaby;->zzaBQ:Ljava/util/Map;

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/zzaad$zza;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaad$zza;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$zze;->zzvi()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/zzaby;->zza(Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/common/api/zzf;Landroid/os/IBinder;)V

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaby;->zzaDw:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzaaf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaf<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzaDw:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzaDx:Lcom/google/android/gms/internal/zzaby$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaaf;->zza(Lcom/google/android/gms/internal/zzaby$zzb;)V

    return-void
.end method

.method public zzxd()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaby;->zzaDw:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/zzaby;->zzaDv:[Lcom/google/android/gms/internal/zzaaf;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzaaf;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Lcom/google/android/gms/internal/zzaby;->zzaDu:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzaaf;->zzC(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
