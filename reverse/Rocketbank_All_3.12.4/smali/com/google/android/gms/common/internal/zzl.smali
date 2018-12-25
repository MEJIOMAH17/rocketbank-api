.class public abstract Lcom/google/android/gms/common/internal/zzl;
.super Lcom/google/android/gms/common/internal/zzf;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zze;
.implements Lcom/google/android/gms/common/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzf<",
        "TT;>;",
        "Lcom/google/android/gms/common/api/Api$zze;",
        "Lcom/google/android/gms/common/internal/zzm$zza;"
    }
.end annotation


# instance fields
.field private final zzaAL:Lcom/google/android/gms/common/internal/zzg;

.field private final zzahh:Landroid/accounts/Account;

.field private final zzakq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzn;->zzaU(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzn;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 10

    move-object v9, p0

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/zzl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/internal/zzf$zzb;

    move-result-object v6

    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/zzl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzf$zzc;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzg;->zzxP()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/zze;ILcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/google/android/gms/common/internal/zzl;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzg;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/gms/common/internal/zzl;->zzahh:Landroid/accounts/Account;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzg;->zzxM()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/google/android/gms/common/internal/zzl;->zzb(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/common/internal/zzl;->zzakq:Ljava/util/Set;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/internal/zzf$zzb;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzl$1;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzf$zzc;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzl$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzl$2;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method

.method private zzb(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzl;->zzc(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzl;->zzahh:Landroid/accounts/Account;

    return-object v0
.end method

.method protected zzc(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public zzxA()[Lcom/google/android/gms/common/zzc;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method protected final zzxF()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzl;->zzakq:Ljava/util/Set;

    return-object v0
.end method

.method protected final zzxW()Lcom/google/android/gms/common/internal/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzl;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    return-object v0
.end method
