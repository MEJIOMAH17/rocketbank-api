.class Lcom/google/android/gms/internal/zzaat$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaat;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaCa:Lcom/google/android/gms/internal/zzabt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzabt;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaat$3;->zzaCa:Lcom/google/android/gms/internal/zzabt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaat$3;->zzaCa:Lcom/google/android/gms/internal/zzabt;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzabt;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
