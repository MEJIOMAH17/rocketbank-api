.class public final enum Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;
.super Ljava/lang/Enum;
.source "PaymentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressInPaymentSheet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DO_NOT_SHOW:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

.field public static final enum NEED_BILLING_AND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

.field public static final enum NEED_BILLING_SEND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

.field public static final enum NEED_BILLING_SPAY:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

.field public static final enum NEED_SHIPPING_SPAY:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

.field public static final enum SEND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1188
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    const-string v1, "DO_NOT_SHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->DO_NOT_SHOW:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    .line 1192
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    const-string v1, "NEED_BILLING_SPAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_BILLING_SPAY:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    .line 1196
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    const-string v1, "NEED_SHIPPING_SPAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_SHIPPING_SPAY:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    .line 1200
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    const-string v1, "SEND_SHIPPING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->SEND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    .line 1205
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    const-string v1, "NEED_BILLING_SEND_SHIPPING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_BILLING_SEND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    .line 1210
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    const-string v1, "NEED_BILLING_AND_SHIPPING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_BILLING_AND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    const/4 v0, 0x6

    .line 1182
    new-array v0, v0, [Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->DO_NOT_SHOW:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_BILLING_SPAY:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_SHIPPING_SPAY:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->SEND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_BILLING_SEND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->NEED_BILLING_AND_SHIPPING:Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    .line 1215
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;
    .locals 1

    .line 1182
    const-class v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;
    .locals 1

    .line 1182
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->$VALUES:[Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;

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

    .line 1239
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo$AddressInPaymentSheet;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
