.class Lcom/google/android/gms/internal/zzasb$2;
.super Lcom/google/android/gms/internal/zzasb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzasb;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/zzt;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbkC:Lcom/google/android/gms/location/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasb;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/zzt;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzasb$2;->zzbkC:Lcom/google/android/gms/location/zzt;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzasb$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzash;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzasb$2;->zza(Lcom/google/android/gms/internal/zzash;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzash;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasb$2;->zzbkC:Lcom/google/android/gms/location/zzt;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/zzash;->zza(Lcom/google/android/gms/location/zzt;Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method
