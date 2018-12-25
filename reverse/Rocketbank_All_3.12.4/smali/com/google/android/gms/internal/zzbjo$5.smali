.class Lcom/google/android/gms/internal/zzbjo$5;
.super Lcom/google/android/gms/tapandpay/TapAndPay$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbjo;->getTokenStatus(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/tapandpay/TapAndPay$zza<",
        "Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbPb:I

.field final synthetic zzbPc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbjo;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/zzbjo$5;->zzbPb:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjo$5;->zzbPc:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$5;->zza(Lcom/google/android/gms/internal/zzbjn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbjn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbjo$zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjo$zzi;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjn;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbjl;

    iget v1, p0, Lcom/google/android/gms/internal/zzbjo$5;->zzbPb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjo$5;->zzbPc:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzbjl;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzbjm;)V

    return-void
.end method

.method protected zzbX(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbjo$zze;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbjo$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tapandpay/issuer/TokenStatus;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$5;->zzbX(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;

    move-result-object p1

    return-object p1
.end method
