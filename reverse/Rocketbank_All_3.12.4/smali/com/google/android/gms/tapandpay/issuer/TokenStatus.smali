.class public final Lcom/google/android/gms/tapandpay/issuer/TokenStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/issuer/TokenStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field zzbNM:Ljava/lang/String;

.field zzbOH:I

.field zzbOI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/issuer/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/issuer/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->zzbNM:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->zzbOH:I

    iput-boolean p4, p0, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->zzbOI:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTokenState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->zzbOH:I

    return v0
.end method

.method public final isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tapandpay/issuer/TokenStatus;->zzbOI:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/issuer/zzb;->zza(Lcom/google/android/gms/tapandpay/issuer/TokenStatus;Landroid/os/Parcel;I)V

    return-void
.end method
