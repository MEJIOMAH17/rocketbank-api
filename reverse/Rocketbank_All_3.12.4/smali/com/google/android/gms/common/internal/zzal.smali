.class public Lcom/google/android/gms/common/internal/zzal;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzaGJ:Lcom/google/android/gms/common/api/Api$zzg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzg<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected zzeA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzal;->zzaGJ:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzeA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzal;->zzaGJ:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzg;->zzez()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzal;->zzaGJ:Lcom/google/android/gms/common/api/Api$zzg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/Api$zzg;->zzh(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method

.method public zzyn()Lcom/google/android/gms/common/api/Api$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzg<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzal;->zzaGJ:Lcom/google/android/gms/common/api/Api$zzg;

    return-object v0
.end method
