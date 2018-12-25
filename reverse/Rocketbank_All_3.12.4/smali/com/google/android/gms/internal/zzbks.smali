.class public final Lcom/google/android/gms/internal/zzbks;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzaJT:Ljava/lang/String;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbks;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbks;->zzaJT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkt;->zza(Lcom/google/android/gms/internal/zzbks;Landroid/os/Parcel;I)V

    return-void
.end method
