.class Lcom/google/android/gms/internal/zzbjo$zzi;
.super Lcom/google/android/gms/internal/zzbjn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzi"
.end annotation


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/tapandpay/TapAndPay$GetTokenStatusResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjn$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjo$zzi;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tapandpay/issuer/TokenStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjo$zzi;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzbjo$zze;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzbjo$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tapandpay/issuer/TokenStatus;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
