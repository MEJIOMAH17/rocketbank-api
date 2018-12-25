.class public final Lcom/google/android/gms/tapandpay/firstparty/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/firstparty/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field zzbNV:Lcom/google/android/gms/tapandpay/firstparty/AccountInfo;

.field zzbNW:[Lcom/google/android/gms/tapandpay/firstparty/CardInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/firstparty/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/firstparty/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/tapandpay/firstparty/CardInfo;Lcom/google/android/gms/tapandpay/firstparty/AccountInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzh;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzh;->zzbNW:[Lcom/google/android/gms/tapandpay/firstparty/CardInfo;

    iput-object p3, p0, Lcom/google/android/gms/tapandpay/firstparty/zzh;->zzbNV:Lcom/google/android/gms/tapandpay/firstparty/AccountInfo;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/firstparty/zzi;->zza(Lcom/google/android/gms/tapandpay/firstparty/zzh;Landroid/os/Parcel;I)V

    return-void
.end method
