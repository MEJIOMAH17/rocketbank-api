.class Lcom/google/android/gms/internal/zzbjo$8;
.super Lcom/google/android/gms/tapandpay/TapAndPay$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbjo;->pushTokenize(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I

.field final synthetic zzbPf:Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbjo;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;ILcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbjo$8;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/google/android/gms/internal/zzbjo$8;->val$requestCode:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjo$8;->zzbPf:Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/tapandpay/TapAndPay$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$8;->zza(Lcom/google/android/gms/internal/zzbjn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbjn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbjn$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjo$8;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/zzbjo$8;->val$requestCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbjn$zzb;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjn;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbjl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjo$8;->zzbPf:Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzbjl;->zza(Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;Lcom/google/android/gms/internal/zzbjm;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$8;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
