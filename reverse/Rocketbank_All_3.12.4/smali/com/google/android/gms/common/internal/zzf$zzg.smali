.class public final Lcom/google/android/gms/common/internal/zzf$zzg;
.super Lcom/google/android/gms/common/internal/zzu$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzg"
.end annotation


# instance fields
.field private zzaFw:Lcom/google/android/gms/common/internal/zzf;

.field private final zzaFx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzf;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzu$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf$zzg;->zzaFw:Lcom/google/android/gms/common/internal/zzf;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzf$zzg;->zzaFx:I

    return-void
.end method

.method private zzxJ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzg;->zzaFw:Lcom/google/android/gms/common/internal/zzf;

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzg;->zzaFw:Lcom/google/android/gms/common/internal/zzf;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf$zzg;->zzaFw:Lcom/google/android/gms/common/internal/zzf;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzf$zzg;->zzaFx:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzf$zzg;->zzxJ()V

    return-void
.end method

.method public final zzb(ILandroid/os/Bundle;)V
    .locals 1

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
