.class Lcom/google/android/gms/internal/zzbjo$3;
.super Lcom/google/android/gms/tapandpay/TapAndPay$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbjo;->tokenize(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I

.field final synthetic zzbPb:I

.field final synthetic zzbPc:Ljava/lang/String;

.field final synthetic zzbPd:Ljava/lang/String;

.field final synthetic zzbPe:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbjo;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbjo$3;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/google/android/gms/internal/zzbjo$3;->val$requestCode:I

    iput p5, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPb:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPd:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPe:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$3;->zza(Lcom/google/android/gms/internal/zzbjn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbjn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v5, Lcom/google/android/gms/internal/zzbjn$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjo$3;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/gms/internal/zzbjo$3;->val$requestCode:I

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/zzbjn$zzb;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjn;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzbjl;

    iget v1, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPd:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzbjo$3;->zzbPe:I

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbjl;->zza(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/zzbjm;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$3;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
