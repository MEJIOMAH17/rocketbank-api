.class public Lcom/google/android/gms/internal/zzbak;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field private zzbEq:I

.field private zzbEr:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbak;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbak;-><init>(ILandroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbak;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbak;->zzbEq:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbak;->zzbEr:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzbak;-><init>(IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbak;->zzbEq:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazB:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbal;->zza(Lcom/google/android/gms/internal/zzbak;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzPR()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbak;->zzbEq:I

    return v0
.end method

.method public zzPS()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbak;->zzbEr:Landroid/content/Intent;

    return-object v0
.end method
