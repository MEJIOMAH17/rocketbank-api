.class Lcom/google/android/gms/internal/zzaul$zza$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaul$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbvU:Lcom/google/android/gms/internal/zzaul$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaul$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul$zza$5;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$zza$5;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaul$zza;->zzbvK:Lcom/google/android/gms/internal/zzaul;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaul;->zza(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/internal/zzatt;)Lcom/google/android/gms/internal/zzatt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$zza$5;->zzbvU:Lcom/google/android/gms/internal/zzaul$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaul$zza;->zzbvK:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzb(Lcom/google/android/gms/internal/zzaul;)V

    return-void
.end method
