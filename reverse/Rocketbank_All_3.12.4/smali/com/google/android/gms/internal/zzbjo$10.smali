.class Lcom/google/android/gms/internal/zzbjo$10;
.super Lcom/google/android/gms/tapandpay/TapAndPay$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbjo;->getEnvironment(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/tapandpay/TapAndPay$zza<",
        "Lcom/google/android/gms/tapandpay/TapAndPay$GetEnvironmentResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbjo;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/tapandpay/TapAndPay$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbjn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$10;->zza(Lcom/google/android/gms/internal/zzbjn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbjn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbjo$zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjo$zzg;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjn;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbjl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbjl;->zzf(Lcom/google/android/gms/internal/zzbjm;)V

    return-void
.end method

.method protected zzbZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tapandpay/TapAndPay$GetEnvironmentResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbjo$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbjo$zzc;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$10;->zzbZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tapandpay/TapAndPay$GetEnvironmentResult;

    move-result-object p1

    return-object p1
.end method
