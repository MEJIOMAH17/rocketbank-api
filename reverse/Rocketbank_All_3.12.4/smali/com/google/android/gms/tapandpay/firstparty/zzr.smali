.class public Lcom/google/android/gms/tapandpay/firstparty/zzr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/firstparty/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzbOA:Ljava/lang/String;

.field final zzbOB:Ljava/lang/String;

.field final zzbOw:Ljava/lang/String;

.field final zzbOx:[B

.field final zzbOy:I

.field final zzbOz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/firstparty/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->zzbOw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->zzbOx:[B

    iput p4, p0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->zzbOy:I

    iput p5, p0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->zzbOz:I

    iput-object p6, p0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->zzbOA:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tapandpay/firstparty/zzr;->zzbOB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/firstparty/zzs;->zza(Lcom/google/android/gms/tapandpay/firstparty/zzr;Landroid/os/Parcel;I)V

    return-void
.end method
