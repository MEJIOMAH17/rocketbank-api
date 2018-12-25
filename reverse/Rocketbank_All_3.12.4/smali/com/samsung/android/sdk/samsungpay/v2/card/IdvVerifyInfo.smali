.class public Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;
.super Ljava/lang/Object;
.source "IdvVerifyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCardId:Ljava/lang/String;

.field private mCardInfoData:Landroid/os/Bundle;

.field private mCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCode:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardInfoData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardInfoData()Landroid/os/Bundle;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardInfoData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardId:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCode:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardInfoData:Landroid/os/Bundle;

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardId:Ljava/lang/String;

    return-void
.end method

.method public setCardInfoData(Landroid/os/Bundle;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardInfoData:Landroid/os/Bundle;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdvVerifyInfo{mCardId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCardInfoData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardInfoData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 169
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/card/IdvVerifyInfo;->mCardInfoData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
