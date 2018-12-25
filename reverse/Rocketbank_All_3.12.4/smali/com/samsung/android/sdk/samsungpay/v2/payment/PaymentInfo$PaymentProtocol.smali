.class public final enum Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;
.super Ljava/lang/Enum;
.source "PaymentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PROTOCOL_3DS:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

.field public static final enum PROTOCOL_COF:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

.field public static final enum PROTOCOL_EMV:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

.field public static final enum PROTOCOL_OTHER:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1361
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    const-string v1, "PROTOCOL_3DS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_3DS:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    const-string v1, "PROTOCOL_EMV"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_EMV:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    const-string v1, "PROTOCOL_COF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_COF:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    const-string v1, "PROTOCOL_OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_OTHER:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    const/4 v0, 0x4

    .line 1359
    new-array v0, v0, [Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_3DS:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_EMV:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_COF:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_OTHER:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    .line 1381
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;
    .locals 1

    .line 1367
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "3DS"

    .line 1368
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_3DS:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    return-object p0

    :cond_0
    const-string v0, "EMV"

    .line 1370
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_EMV:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    return-object p0

    :cond_1
    const-string v0, "COF"

    .line 1372
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1373
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_COF:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    return-object p0

    .line 1375
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->PROTOCOL_OTHER:Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;
    .locals 1

    .line 1359
    const-class v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;
    .locals 1

    .line 1359
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1404
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/PaymentInfo$PaymentProtocol;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
