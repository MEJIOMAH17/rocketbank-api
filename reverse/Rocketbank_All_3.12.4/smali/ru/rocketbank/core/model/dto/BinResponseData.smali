.class public Lru/rocketbank/core/model/dto/BinResponseData;
.super Ljava/lang/Object;
.source "BinResponseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/BinResponseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private cardImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private color:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url"
    .end annotation
.end field

.field private isRefillWorks:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "works"
    .end annotation
.end field

.field private isTransferWorks:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer_works"
    .end annotation
.end field

.field private logoImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation
.end field

.field private refillAdvice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "advice"
    .end annotation
.end field

.field public small2xUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "small2x_url"
    .end annotation
.end field

.field private transferAdvice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer_hint"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lru/rocketbank/core/model/dto/BinResponseData$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/BinResponseData$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/BinResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->isRefillWorks:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->refillAdvice:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lru/rocketbank/core/model/dto/BinResponseData;->isTransferWorks:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->transferAdvice:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->bankName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->cardImageUrl:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->logoImageUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->iconUrl:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->color:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/dto/BinResponseData;->small2xUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardImageUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->cardImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoImageUrl()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->logoImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRefillAdvice()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->refillAdvice:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferAdvice()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->transferAdvice:Ljava/lang/String;

    return-object v0
.end method

.method public isRefillWorks()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->isRefillWorks:Z

    return v0
.end method

.method public isTransferWorks()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lru/rocketbank/core/model/dto/BinResponseData;->isTransferWorks:Z

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lru/rocketbank/core/model/dto/BinResponseData;->color:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 107
    iget-boolean p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->isRefillWorks:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->refillAdvice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-boolean p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->isTransferWorks:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 110
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->transferAdvice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->bankName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->cardImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->logoImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lru/rocketbank/core/model/dto/BinResponseData;->small2xUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
