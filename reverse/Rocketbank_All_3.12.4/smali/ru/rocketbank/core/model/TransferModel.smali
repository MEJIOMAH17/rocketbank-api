.class public final Lru/rocketbank/core/model/TransferModel;
.super Ljava/lang/Object;
.source "TransferModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/TransferModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private friendId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend_id"
    .end annotation
.end field

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

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lru/rocketbank/core/model/TransferModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/TransferModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/TransferModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/TransferModel;->amount:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/TransferModel;->friendId:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/TransferModel;->email:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/TransferModel;->firstName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/TransferModel;->lastName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/TransferModel;->mobilePhone:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/TransferModel;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAmount()I
    .locals 1

    .line 70
    iget v0, p0, Lru/rocketbank/core/model/TransferModel;->amount:I

    return v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lru/rocketbank/core/model/TransferModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/model/TransferModel;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFriendId()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lru/rocketbank/core/model/TransferModel;->friendId:J

    return-wide v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lru/rocketbank/core/model/TransferModel;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/core/model/TransferModel;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/core/model/TransferModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 43
    iget p2, p0, Lru/rocketbank/core/model/TransferModel;->amount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-wide v0, p0, Lru/rocketbank/core/model/TransferModel;->friendId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-object p2, p0, Lru/rocketbank/core/model/TransferModel;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lru/rocketbank/core/model/TransferModel;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lru/rocketbank/core/model/TransferModel;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lru/rocketbank/core/model/TransferModel;->mobilePhone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lru/rocketbank/core/model/TransferModel;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
