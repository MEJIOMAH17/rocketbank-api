.class public Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;
.super Ljava/lang/Object;
.source "FriendTransfersRequestData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:D

.field private comment:Ljava/lang/String;

.field private contact:Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

.field private hash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_uniq_timestamp_hash"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_token"
    .end annotation
.end field

.field private userId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    .line 23
    invoke-virtual {v0}, Lru/rocketbank/core/utils/Payments;->newHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->hash:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->token:Ljava/lang/String;

    .line 93
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->userId:Ljava/lang/Long;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->amount:D

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->comment:Ljava/lang/String;

    .line 96
    const-class v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->contact:Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->hash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    .line 23
    invoke-virtual {v0}, Lru/rocketbank/core/utils/Payments;->newHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->hash:Ljava/lang/String;

    .line 28
    iput-wide p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->amount:D

    .line 29
    iput-object p4, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->comment:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->token:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->isRocket()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 32
    iput-object p3, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->userId:Ljava/lang/Long;

    .line 33
    new-instance p2, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getFirstName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getLastName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getPhones()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getEmails()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p2, p3, p4, p5, p1}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iput-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->contact:Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->userId:Ljava/lang/Long;

    .line 36
    iput-object p3, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->contact:Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

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

    .line 53
    iget-wide v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->amount:D

    return-wide v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getContact()Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;
    .locals 1

    .line 69
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->contact:Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isRocket()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->userId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->amount:D

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->comment:Ljava/lang/String;

    return-void
.end method

.method public setContact(Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->contact:Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->token:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->userId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 85
    iget-wide v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 86
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->contact:Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 88
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
