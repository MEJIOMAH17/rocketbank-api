.class public Lru/rocketbank/core/model/MoneyData;
.super Ljava/lang/Object;
.source "MoneyData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/MoneyData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field amount:D

.field currencyCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_code"
    .end annotation
.end field

.field private formatted:Ljava/lang/String;

.field private formattedExact:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "formatted_exact"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lru/rocketbank/core/model/MoneyData$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/MoneyData$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/MoneyData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lru/rocketbank/core/model/MoneyData;->amount:D

    .line 23
    iput-object p3, p0, Lru/rocketbank/core/model/MoneyData;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/MoneyData;->formatted:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/MoneyData;->formattedExact:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/MoneyData;->amount:D

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/MoneyData;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/MoneyData;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iget-object v0, p1, Lru/rocketbank/core/model/MoneyData;->formatted:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/MoneyData;->formatted:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lru/rocketbank/core/model/MoneyData;->formattedExact:Ljava/lang/String;

    iput-object v0, p0, Lru/rocketbank/core/model/MoneyData;->formattedExact:Ljava/lang/String;

    .line 29
    iget-wide v0, p1, Lru/rocketbank/core/model/MoneyData;->amount:D

    iput-wide v0, p0, Lru/rocketbank/core/model/MoneyData;->amount:D

    .line 30
    iget-object p1, p1, Lru/rocketbank/core/model/MoneyData;->currencyCode:Ljava/lang/String;

    iput-object p1, p0, Lru/rocketbank/core/model/MoneyData;->currencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 69
    iget-wide v0, p0, Lru/rocketbank/core/model/MoneyData;->amount:D

    return-wide v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lru/rocketbank/core/model/MoneyData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatted()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/model/MoneyData;->formatted:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedExact()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/MoneyData;->formattedExact:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lru/rocketbank/core/model/MoneyData;->amount:D

    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lru/rocketbank/core/model/MoneyData;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public setFormatted(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lru/rocketbank/core/model/MoneyData;->formatted:Ljava/lang/String;

    return-void
.end method

.method public setFormattedExact(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lru/rocketbank/core/model/MoneyData;->formattedExact:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 92
    iget-object p2, p0, Lru/rocketbank/core/model/MoneyData;->formatted:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lru/rocketbank/core/model/MoneyData;->formattedExact:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lru/rocketbank/core/model/MoneyData;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 95
    iget-object p2, p0, Lru/rocketbank/core/model/MoneyData;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
