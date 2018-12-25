.class public Lru/rocketbank/core/model/SafeAccount;
.super Ljava/lang/Object;
.source "SafeAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/SafeAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private account_details:Lru/rocketbank/core/model/AccountDetailsModel;

.field private balance:D

.field private bank:Ljava/lang/String;

.field private close_text:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Lru/rocketbank/core/model/SafeAccount$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/SafeAccount$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/SafeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/SafeAccount;->balance:D

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    .line 139
    const-class v0, Lru/rocketbank/core/model/AccountDetailsModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/AccountDetailsModel;

    iput-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_8

    .line 76
    :cond_1
    check-cast p1, Lru/rocketbank/core/model/SafeAccount;

    .line 78
    iget-wide v2, p1, Lru/rocketbank/core/model/SafeAccount;->balance:D

    iget-wide v4, p0, Lru/rocketbank/core/model/SafeAccount;->balance:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 79
    :cond_2
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 80
    :cond_4
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 81
    :cond_6
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 82
    :cond_8
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 83
    :cond_a
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_b
    iget-object v2, p1, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_4
    return v1

    .line 84
    :cond_c
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    iget-object v3, p1, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_d
    iget-object v2, p1, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    if-eqz v2, :cond_e

    :goto_5
    return v1

    .line 86
    :cond_e
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_6

    :cond_f
    iget-object v2, p1, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    if-eqz v2, :cond_10

    :goto_6
    return v1

    .line 88
    :cond_10
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_7

    :cond_11
    iget-object p1, p1, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    if-eqz p1, :cond_12

    :goto_7
    return v1

    :cond_12
    return v0

    :cond_13
    :goto_8
    return v1
.end method

.method public getAccountDetails()Lru/rocketbank/core/model/AccountDetailsModel;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    return-object v0
.end method

.method public getAccount_details()Lru/rocketbank/core/model/AccountDetailsModel;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    return-object v0
.end method

.method public getBalance()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lru/rocketbank/core/model/SafeAccount;->balance:D

    return-wide v0
.end method

.method public getBank()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseText()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Lru/rocketbank/core/model/enums/Currency;
    .locals 1

    .line 60
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/Currency;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lru/rocketbank/core/model/enums/Status;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/Status;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 98
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    .line 100
    iget-wide v2, p0, Lru/rocketbank/core/model/SafeAccount;->balance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v1, p0, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 118
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->bank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-wide v0, p0, Lru/rocketbank/core/model/SafeAccount;->balance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 121
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/model/SafeAccount;->account_details:Lru/rocketbank/core/model/AccountDetailsModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object p2, p0, Lru/rocketbank/core/model/SafeAccount;->currency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lru/rocketbank/core/model/SafeAccount;->close_text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
