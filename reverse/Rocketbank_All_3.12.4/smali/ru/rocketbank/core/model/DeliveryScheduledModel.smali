.class public final Lru/rocketbank/core/model/DeliveryScheduledModel;
.super Ljava/lang/Object;
.source "DeliveryScheduledModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/DeliveryScheduledModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field private avatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation
.end field

.field private body:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private end:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field private start:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lru/rocketbank/core/model/DeliveryScheduledModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/DeliveryScheduledModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/DeliveryScheduledModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->latitude:D

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->longitude:D

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->end:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->start:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->address:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->author:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->avatar:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->body:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnd()Ljava/util/Date;
    .locals 3

    .line 92
    sget-object v0, Lru/rocketbank/core/model/ModelTools;->INSTANCE:Lru/rocketbank/core/model/ModelTools;

    iget-wide v1, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->end:J

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/model/ModelTools;->formatDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->longitude:D

    return-wide v0
.end method

.method public final getStart()Ljava/util/Date;
    .locals 3

    .line 96
    sget-object v0, Lru/rocketbank/core/model/ModelTools;->INSTANCE:Lru/rocketbank/core/model/ModelTools;

    iget-wide v1, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->start:J

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/model/ModelTools;->formatDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 55
    iget-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    iget-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 57
    iget-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->end:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v0, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->start:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledModel;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
