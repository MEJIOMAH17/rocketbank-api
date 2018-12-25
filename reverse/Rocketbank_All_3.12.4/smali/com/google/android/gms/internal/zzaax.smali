.class public Lcom/google/android/gms/internal/zzaax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaax$zzb;,
        Lcom/google/android/gms/internal/zzaax$zza;
    }
.end annotation


# static fields
.field public static final zzaCn:Lcom/google/android/gms/common/api/Status;

.field private static final zzaCo:Lcom/google/android/gms/common/api/Status;

.field private static zzaCq:Lcom/google/android/gms/internal/zzaax;

.field private static final zztX:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzaAM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzzz<",
            "*>;",
            "Lcom/google/android/gms/internal/zzaax$zza<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzaBM:J

.field private zzaBN:J

.field private zzaCp:J

.field private zzaCr:I

.field private final zzaCs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzaCu:Lcom/google/android/gms/internal/zzaam;

.field private final zzaCv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzzz<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaCw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzzz<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzaax;->zzaCn:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzaax;->zzaCo:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaax;->zztX:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaBN:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaBM:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCp:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCr:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCs:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCu:Lcom/google/android/gms/internal/zzaam;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCv:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCw:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaax;->zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaax;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCr:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private zza(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax$zza;->getInstanceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax;->zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x45

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaax$zza;->zzD(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    const-string p2, "GoogleApiManager"

    const/16 v0, 0x4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not find API instance "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p2, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzaab;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaab;->zzvz()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaax$zza;

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzaab;->zza(Lcom/google/android/gms/internal/zzzz;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaax$zza;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzaab;->zza(Lcom/google/android/gms/internal/zzzz;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaax$zza;->zzwK()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaax$zza;->zzwK()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzaax$zza;->zzb(Lcom/google/android/gms/internal/zzaab;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzabl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzabl;->zzaDe:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaax$zza;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzabl;->zzaDe:Lcom/google/android/gms/common/api/zzc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaax;->zzc(Lcom/google/android/gms/common/api/zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzabl;->zzaDe:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaax$zza;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzrd()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/internal/zzabl;->zzaDd:I

    if-eq v1, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzabl;->zzaDc:Lcom/google/android/gms/internal/zzzx;

    sget-object v1, Lcom/google/android/gms/internal/zzaax;->zzaCn:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzzx;->zzz(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax$zza;->signOut()V

    return-void

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/zzabl;->zzaDc:Lcom/google/android/gms/internal/zzzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaax$zza;->zza(Lcom/google/android/gms/internal/zzzx;)V

    return-void
.end method

.method public static zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaax;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzaax;->zzaCq:Lcom/google/android/gms/internal/zzaax;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzaax;->zzwy()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    sput-object v2, Lcom/google/android/gms/internal/zzaax;->zzaCq:Lcom/google/android/gms/internal/zzaax;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzaax;->zzaCq:Lcom/google/android/gms/internal/zzaax;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zzau(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x493e0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCp:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzaax;->zzaCp:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaax;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaax;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaax;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaBN:J

    return-wide v0
.end method

.method private zzc(Lcom/google/android/gms/common/api/zzc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaax$zza;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaax$zza;-><init>(Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/common/api/zzc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax$zza;->zzrd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCw:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax$zza;->connect()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaax;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaBM:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/internal/zzaam;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCu:Lcom/google/android/gms/internal/zzaam;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzaax;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCv:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaax;->zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzaax;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCp:J

    return-wide v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzaax;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCr:I

    return p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzaax;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    return-object p0
.end method

.method private zzwA()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzg()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zza(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzaac;->zzvB()Lcom/google/android/gms/internal/zzaac;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaax$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaax$1;-><init>(Lcom/google/android/gms/internal/zzaax;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac$zza;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzaac;->zzvB()Lcom/google/android/gms/internal/zzaac;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaac;->zzar(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCp:J

    :cond_0
    return-void
.end method

.method private zzwB()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax$zza;->zzwJ()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax$zza;->connect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zzwC()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax$zza;->signOut()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method static synthetic zzwD()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zzaCo:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic zzwE()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zztX:Ljava/lang/Object;

    return-object v0
.end method

.method public static zzww()Lcom/google/android/gms/internal/zzaax;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzaax;->zzaCq:Lcom/google/android/gms/internal/zzaax;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzaax;->zzaCq:Lcom/google/android/gms/internal/zzaax;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zzwx()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzaax;->zzaCq:Lcom/google/android/gms/internal/zzaax;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzaax;->zzaCq:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax;->signOut()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static zzwy()Landroid/os/Looper;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GoogleApiHandler"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiManager"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaax$zza;->zzwN()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaax$zza;->zzwn()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax;->zzwC()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaax$zza;->resume()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/zzc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaax;->zzc(Lcom/google/android/gms/common/api/zzc;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax;->zzwA()V

    goto :goto_0

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzaax;->zza(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/zzabl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzabl;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax;->zzwB()V

    goto :goto_0

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/zzaab;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaab;)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaax;->zzau(Z)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public signOut()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzzz;I)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzz<",
            "*>;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaax$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaax$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaax$zza;->zzwO()Lcom/google/android/gms/internal/zzbai;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbai;->zzrs()Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x8000000

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzabh$zzb;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc<",
            "TO;>;",
            "Lcom/google/android/gms/internal/zzabh$zzb<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzzx$zze;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/zzzx$zze;-><init>(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzabl;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, v1, v4, p1}, Lcom/google/android/gms/internal/zzabl;-><init>(Lcom/google/android/gms/internal/zzzx;ILcom/google/android/gms/common/api/zzc;)V

    const/16 p1, 0xd

    invoke-virtual {v2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzabz;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc<",
            "TO;>;",
            "Lcom/google/android/gms/internal/zzabm<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;",
            "Lcom/google/android/gms/internal/zzabz<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzzx$zzc;

    new-instance v2, Lcom/google/android/gms/internal/zzabn;

    invoke-direct {v2, p2, p3}, Lcom/google/android/gms/internal/zzabn;-><init>(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzabz;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzzx$zzc;-><init>(Lcom/google/android/gms/internal/zzabn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzabl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, v1, v3, p1}, Lcom/google/android/gms/internal/zzabl;-><init>(Lcom/google/android/gms/internal/zzzx;ILcom/google/android/gms/common/api/zzc;)V

    const/16 p1, 0x8

    invoke-virtual {p3, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/common/api/zzc<",
            "*>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaab;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaab;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax;->zzaAM:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaax$zza;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax$zza;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaab;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaab;->zzvA()V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaax;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzaad$zza;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc<",
            "TO;>;I",
            "Lcom/google/android/gms/internal/zzaad$zza<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzzx$zzb;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzzx$zzb;-><init>(ILcom/google/android/gms/internal/zzaad$zza;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzabl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/zzabl;-><init>(Lcom/google/android/gms/internal/zzzx;ILcom/google/android/gms/common/api/zzc;)V

    const/4 p1, 0x4

    invoke-virtual {p3, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzabv;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzabs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc<",
            "TO;>;I",
            "Lcom/google/android/gms/internal/zzabv<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TTResult;>;",
            "Lcom/google/android/gms/internal/zzabs;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzzx$zzd;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzzx$zzd;-><init>(ILcom/google/android/gms/internal/zzabv;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzabs;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/google/android/gms/internal/zzabl;

    iget-object p5, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5

    invoke-direct {p4, v0, p5, p1}, Lcom/google/android/gms/internal/zzabl;-><init>(Lcom/google/android/gms/internal/zzzx;ILcom/google/android/gms/common/api/zzc;)V

    const/4 p1, 0x4

    invoke-virtual {p3, p1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaam;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCu:Lcom/google/android/gms/internal/zzaam;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCu:Lcom/google/android/gms/internal/zzaam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCv:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCv:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaam;->zzwb()Lcom/google/android/gms/common/util/zza;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/common/api/zzc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzaam;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCu:Lcom/google/android/gms/internal/zzaam;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCu:Lcom/google/android/gms/internal/zzaam;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaax;->zzaCv:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    return p1
.end method

.method zzvn()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzvx()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzwz()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax;->zzaCs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method
