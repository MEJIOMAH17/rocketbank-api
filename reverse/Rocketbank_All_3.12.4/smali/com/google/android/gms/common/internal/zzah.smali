.class public Lcom/google/android/gms/common/internal/zzah;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaEX:[Lcom/google/android/gms/common/api/Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzaGG:I

.field private final zzaGH:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzah;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/common/internal/zzah;->zzaGG:I

    iput p3, p0, Lcom/google/android/gms/common/internal/zzah;->zzaGH:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzah;->zzaEX:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method

.method public constructor <init>(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/gms/common/internal/zzah;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzai;->zza(Lcom/google/android/gms/common/internal/zzah;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzyk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzaGG:I

    return v0
.end method

.method public zzyl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzaGH:I

    return v0
.end method

.method public zzym()[Lcom/google/android/gms/common/api/Scope;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzaEX:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method
