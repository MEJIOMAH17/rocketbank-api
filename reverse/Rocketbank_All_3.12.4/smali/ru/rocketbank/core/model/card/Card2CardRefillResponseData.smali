.class public Lru/rocketbank/core/model/card/Card2CardRefillResponseData;
.super Ljava/lang/Object;
.source "Card2CardRefillResponseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/card/Card2CardRefillResponseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private balance:D

.field private errors:Ljava/lang/String;

.field private html:Ljava/lang/String;

.field private id:I

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/card/Card2CardRefillResponseData$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->id:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->status:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->errors:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->balance:D

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->html:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBalance()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->balance:D

    return-wide v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->errors:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 39
    iget v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->id:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(D)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->balance:D

    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->errors:Ljava/lang/String;

    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->html:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 43
    iput p1, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->id:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->status:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 85
    iget p2, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->errors:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-wide v0, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->balance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    iget-object p2, p0, Lru/rocketbank/core/model/card/Card2CardRefillResponseData;->html:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
