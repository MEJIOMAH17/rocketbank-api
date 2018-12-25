.class public Lru/rocketbank/core/model/dto/operations/Friend;
.super Ljava/lang/Object;
.source "Friend.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/Friend;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private id:J

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field private mobilePhone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile_phone"
    .end annotation
.end field

.field private userpicUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userpic_url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lru/rocketbank/core/model/dto/operations/Friend$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/Friend$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/Friend;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->id:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->userpicUrl:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->firstName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->lastName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->mobilePhone:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->email:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->id:J

    return-wide v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 113
    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->firstName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->firstName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->lastName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserpicUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->userpicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->email:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->id:J

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->mobilePhone:Ljava/lang/String;

    return-void
.end method

.method public setUserpicUrl(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Friend;->userpicUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 38
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Friend;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Friend;->userpicUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Friend;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Friend;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Friend;->mobilePhone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Friend;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
