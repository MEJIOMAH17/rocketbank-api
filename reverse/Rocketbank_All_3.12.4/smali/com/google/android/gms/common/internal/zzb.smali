.class public Lcom/google/android/gms/common/internal/zzb;
.super Ljava/lang/Object;


# direct methods
.method public static zzG(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zzd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/zza;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzG(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zza;

    move-result-object p0

    return-object p0
.end method
