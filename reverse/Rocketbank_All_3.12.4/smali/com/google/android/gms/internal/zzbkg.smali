.class public final Lcom/google/android/gms/internal/zzbkg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbkg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzaiu:Ljava/lang/String;

.field final zzbPm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkg;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkg;->zzbPm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkg;->zzaiu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkh;->zza(Lcom/google/android/gms/internal/zzbkg;Landroid/os/Parcel;I)V

    return-void
.end method
