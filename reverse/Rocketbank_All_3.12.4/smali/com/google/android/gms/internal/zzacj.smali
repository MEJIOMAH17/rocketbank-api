.class public Lcom/google/android/gms/internal/zzacj;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl<",
        "Lcom/google/android/gms/internal/zzacl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected zzbz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzacl;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzacl$zza;->zzbB(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzacl;

    move-result-object p1

    return-object p1
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method

.method public zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzacj;->zzbz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzacl;

    move-result-object p1

    return-object p1
.end method
