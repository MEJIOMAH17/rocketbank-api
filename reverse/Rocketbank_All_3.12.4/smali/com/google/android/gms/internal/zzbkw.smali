.class public final Lcom/google/android/gms/internal/zzbkw;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbkw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field zzbNy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkw;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkw;->zzbNy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkx;->zza(Lcom/google/android/gms/internal/zzbkw;Landroid/os/Parcel;I)V

    return-void
.end method
