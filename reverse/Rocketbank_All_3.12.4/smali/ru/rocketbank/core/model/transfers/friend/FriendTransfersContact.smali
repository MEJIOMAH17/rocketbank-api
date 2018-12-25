.class public Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;
.super Ljava/lang/Object;
.source "FriendTransfersContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private email:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Email"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private first:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "First"
    .end annotation
.end field

.field private last:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Last"
    .end annotation
.end field

.field private phone:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Phone"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->first:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->last:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->phone:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->email:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->first:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->last:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->phone:Ljava/util/List;

    .line 27
    iput-object p4, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->email:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->email:Ljava/util/List;

    return-object v0
.end method

.method public getFirst()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->first:Ljava/lang/String;

    return-object v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->last:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->phone:Ljava/util/List;

    return-object v0
.end method

.method public setEmail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->email:Ljava/util/List;

    return-void
.end method

.method public setFirst(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->first:Ljava/lang/String;

    return-void
.end method

.method public setLast(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->last:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->phone:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 69
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->first:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->last:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->phone:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 72
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersContact;->email:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
