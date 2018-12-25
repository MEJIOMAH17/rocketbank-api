.class public final Lru/rocketbank/core/model/InvitesModel;
.super Ljava/lang/Object;
.source "InvitesModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/InvitesModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private friends:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends"
    .end annotation
.end field

.field private maxFriends:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_friends"
    .end annotation
.end field

.field private profit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profit"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lru/rocketbank/core/model/InvitesModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/InvitesModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/InvitesModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/InvitesModel;->friends:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/InvitesModel;->maxFriends:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/InvitesModel;->profit:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/InvitesModel;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getFriends()I
    .locals 1

    .line 55
    iget v0, p0, Lru/rocketbank/core/model/InvitesModel;->friends:I

    return v0
.end method

.method public final getMaxFriends()I
    .locals 1

    .line 59
    iget v0, p0, Lru/rocketbank/core/model/InvitesModel;->maxFriends:I

    return v0
.end method

.method public final getProfit()I
    .locals 1

    .line 63
    iget v0, p0, Lru/rocketbank/core/model/InvitesModel;->profit:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lru/rocketbank/core/model/InvitesModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    iget p2, p0, Lru/rocketbank/core/model/InvitesModel;->friends:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lru/rocketbank/core/model/InvitesModel;->maxFriends:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p2, p0, Lru/rocketbank/core/model/InvitesModel;->profit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lru/rocketbank/core/model/InvitesModel;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
