.class public Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;
.super Ljava/lang/Object;
.source "AddCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ISSUER_ID:Ljava/lang/String; = "issuerId"

.field public static final EXTRA_PROVISION_PAYLOAD:Ljava/lang/String; = "provisionPayload"

.field public static final PROVIDER_AMEX:Ljava/lang/String; = "AX"

.field public static final PROVIDER_DISCOVER:Ljava/lang/String; = "DS"

.field public static final PROVIDER_GIFT:Ljava/lang/String; = "GI"

.field public static final PROVIDER_GTO:Ljava/lang/String; = "GTO"

.field public static final PROVIDER_LOYALTY:Ljava/lang/String; = "LO"

.field public static final PROVIDER_MASTERCARD:Ljava/lang/String; = "MC"

.field public static final PROVIDER_PLCC:Ljava/lang/String; = "PL"

.field public static final PROVIDER_VISA:Ljava/lang/String; = "VI"


# instance fields
.field private cardDetail:Landroid/os/Bundle;

.field private cardType:Ljava/lang/String;

.field private tokenizationProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardType:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->tokenizationProvider:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardDetail:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardType:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->tokenizationProvider:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardDetail:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardDetail()Landroid/os/Bundle;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardDetail:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenizationProvider()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->tokenizationProvider:Ljava/lang/String;

    return-object v0
.end method

.method public setCardDetail(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardDetail:Landroid/os/Bundle;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardType:Ljava/lang/String;

    return-void
.end method

.method public setTokenizationProvider(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->tokenizationProvider:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 179
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->tokenizationProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/AddCardInfo;->cardDetail:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
