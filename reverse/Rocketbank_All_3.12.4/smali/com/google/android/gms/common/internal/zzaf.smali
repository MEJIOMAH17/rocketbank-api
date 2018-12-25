.class public Lcom/google/android/gms/common/internal/zzaf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaBx:Z

.field zzaEW:Landroid/os/IBinder;

.field private zzaGE:Lcom/google/android/gms/common/ConnectionResult;

.field private zzaGF:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaEW:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaGE:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaBx:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaGF:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzaf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/internal/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaGE:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzaf;->zzaGE:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzaf;->zzyg()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzaf;->zzyg()Lcom/google/android/gms/common/internal/zzr;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzag;->zza(Lcom/google/android/gms/common/internal/zzaf;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzyg()Lcom/google/android/gms/common/internal/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaEW:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzr$zza;->zzbr(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzr;

    move-result-object v0

    return-object v0
.end method

.method public zzyh()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaGE:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public zzyi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaBx:Z

    return v0
.end method

.method public zzyj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzaf;->zzaGF:Z

    return v0
.end method
