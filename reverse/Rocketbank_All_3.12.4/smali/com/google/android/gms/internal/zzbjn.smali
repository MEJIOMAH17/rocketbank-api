.class public Lcom/google/android/gms/internal/zzbjn;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbjn$zzb;,
        Lcom/google/android/gms/internal/zzbjn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl<",
        "Lcom/google/android/gms/internal/zzbjl;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;)V
    .locals 7

    const/16 v3, 0x4f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjn;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.tapandpay.internal.ITapAndPayService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.tapandpay.service.BIND"

    return-object v0
.end method

.method protected zzfp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbjl;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbjl$zza;->zzfn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbjl;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjn;->zzfp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbjl;

    move-result-object p1

    return-object p1
.end method

.method protected zzqL()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
