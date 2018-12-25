.class public Lcom/google/android/gms/internal/zzbth;
.super Ljava/lang/Object;


# static fields
.field private static final zzbWP:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/zzbth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbth;->zzbWP:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaca()Lcom/google/android/gms/internal/zzbth;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbth;->zzbWP:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbth;

    return-object v0
.end method

.method public static zzcx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbth;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbth;->zzbWP:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/zzbth;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbth;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lcom/google/android/gms/internal/zzbth;->zzbWP:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzbth;

    return-object p0
.end method


# virtual methods
.method public zzacb()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    return-void
.end method

.method public zzjC(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
