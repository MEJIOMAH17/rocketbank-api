.class public abstract Lcom/google/android/gms/internal/zzaaf;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaaf$zzb;,
        Lcom/google/android/gms/internal/zzaaf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final zzaAg:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzK:Z

.field private final zzaAh:Ljava/lang/Object;

.field protected final zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaf$zza<",
            "TR;>;"
        }
    .end annotation
.end field

.field protected final zzaAj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaAk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/PendingResult$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAl:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final zzaAm:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/zzaby$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAn:Lcom/google/android/gms/internal/zzaaf$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaf$zzb;"
        }
    .end annotation
.end field

.field private volatile zzaAo:Z

.field private zzaAp:Z

.field private zzaAq:Lcom/google/android/gms/common/internal/zzs;

.field private volatile zzaAr:Lcom/google/android/gms/internal/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabx<",
            "TR;>;"
        }
    .end annotation
.end field

.field private zzaAs:Z

.field private zzair:Lcom/google/android/gms/common/api/Status;

.field private zzazt:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final zztj:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaaf$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaaf;->zzaAg:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaaf$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaaf$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaaf$zza;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private get()Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    const-string v3, "Result is not ready."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->zzvG()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaaf;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    return-object p0
.end method

.method private zzc(Lcom/google/android/gms/common/api/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzair:Lcom/google/android/gms/common/api/Status;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    instance-of v0, v0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaaf$zzb;-><init>(Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/internal/zzaaf$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAn:Lcom/google/android/gms/internal/zzaaf$zzb;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaf$zza;->zzvK()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzair:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzy(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/common/api/Result;)V
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BasePendingResult"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x12

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to release "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private zzvG()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaby$zzb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzaby$zzb;->zzc(Lcom/google/android/gms/internal/zzaaf;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "await must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    xor-int/2addr v0, v3

    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazy:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zzC(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    xor-int/2addr v2, v1

    const-string v3, "Result has already been consumed."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    const-string v1, "Cannot await if then() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzazA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaaf;->zzC(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzazy:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaaf;->zzC(Lcom/google/android/gms/common/api/Status;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result p1

    const-string p2, "Result is not ready."

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;

    invoke-interface {v1}, Lcom/google/android/gms/common/internal/zzs;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaaf;->zzd(Lcom/google/android/gms/common/api/Result;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isReady()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/internal/zzaaf;J)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult<",
            "TS;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "Cannot call then() twice."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v2, :cond_1

    move v3, v1

    :cond_1
    const-string v2, "Cannot call then() if callbacks are set."

    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    xor-int/2addr v2, v1

    const-string v3, "Cannot call then() if result was canceled."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    new-instance v1, Lcom/google/android/gms/internal/zzabx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzabx;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzabx;->then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzC(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaaf;->zzb(Lcom/google/android/gms/common/api/Result;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAp:Z

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

.method public final zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Callback cannot be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzair:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzy(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final zza(Lcom/google/android/gms/common/internal/zzs;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzaby$zzb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAp:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Results have already been set"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Result has already been consumed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaaf;->zzd(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public zzvF()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isCanceled()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzvH()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public zzvI()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzaaf;->zzaAg:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    return-void
.end method

.method public zzvr()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
