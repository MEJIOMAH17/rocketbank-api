.class public final Lcom/google/android/gms/tapandpay/firstparty/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/firstparty/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field zzbNW:[Lcom/google/android/gms/tapandpay/firstparty/CardInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/firstparty/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/firstparty/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/tapandpay/firstparty/CardInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzf;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzf;->zzbNW:[Lcom/google/android/gms/tapandpay/firstparty/CardInfo;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/firstparty/zzg;->zza(Lcom/google/android/gms/tapandpay/firstparty/zzf;Landroid/os/Parcel;I)V

    return-void
.end method
