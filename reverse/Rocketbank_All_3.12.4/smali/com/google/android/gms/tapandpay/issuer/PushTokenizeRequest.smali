.class public Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field final zzbNB:Ljava/lang/String;

.field final zzbPr:I

.field final zzbPs:I

.field final zzbPt:[B

.field final zzbPu:Ljava/lang/String;

.field final zzbPv:Lcom/google/android/gms/identity/intents/model/UserAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/issuer/zza;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/issuer/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->zzbPr:I

    iput p3, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->zzbPs:I

    iput-object p4, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->zzbPt:[B

    iput-object p5, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->zzbPu:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->zzbNB:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;->zzbPv:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-void
.end method

.method private constructor <init>(II[BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;)V
    .locals 8

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;-><init>(III[BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;)V

    return-void
.end method

.method synthetic constructor <init>(II[BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;-><init>(II[BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/issuer/zza;->zza(Lcom/google/android/gms/tapandpay/issuer/PushTokenizeRequest;Landroid/os/Parcel;I)V

    return-void
.end method
