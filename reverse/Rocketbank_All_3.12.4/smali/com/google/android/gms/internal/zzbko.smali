.class public final Lcom/google/android/gms/internal/zzbko;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbko;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzaiu:Ljava/lang/String;

.field final zzbPn:Ljava/lang/String;

.field final zzbPo:Lcom/google/android/gms/tapandpay/firstparty/zzx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbko;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tapandpay/firstparty/zzx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbko;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbko;->zzaiu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbko;->zzbPn:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbko;->zzbPo:Lcom/google/android/gms/tapandpay/firstparty/zzx;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkp;->zza(Lcom/google/android/gms/internal/zzbko;Landroid/os/Parcel;I)V

    return-void
.end method
