.class public final Lcom/google/android/gms/tapandpay/firstparty/zzj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/firstparty/zzj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field zzbNX:Z

.field zzbNY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/firstparty/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/firstparty/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzj;->zzaiI:I

    iput-boolean p2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzj;->zzbNX:Z

    iput-boolean p3, p0, Lcom/google/android/gms/tapandpay/firstparty/zzj;->zzbNY:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/firstparty/zzk;->zza(Lcom/google/android/gms/tapandpay/firstparty/zzj;Landroid/os/Parcel;I)V

    return-void
.end method
