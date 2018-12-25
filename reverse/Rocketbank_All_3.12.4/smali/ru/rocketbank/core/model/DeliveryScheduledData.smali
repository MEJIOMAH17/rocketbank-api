.class public Lru/rocketbank/core/model/DeliveryScheduledData;
.super Ljava/lang/Object;
.source "DeliveryScheduledData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/DeliveryScheduledData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private author:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private body:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lru/rocketbank/core/model/DeliveryScheduledData$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/DeliveryScheduledData$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/DeliveryScheduledData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lru/rocketbank/core/model/DeliveryScheduledData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->body:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lru/rocketbank/core/model/DeliveryScheduledData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->author:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lru/rocketbank/core/model/DeliveryScheduledData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->avatar:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 56
    instance-of v0, p1, Lru/rocketbank/core/model/DeliveryScheduledData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 57
    check-cast p1, Lru/rocketbank/core/model/DeliveryScheduledData;

    .line 60
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->body:Ljava/lang/String;

    iget-object v2, p1, Lru/rocketbank/core/model/DeliveryScheduledData;->body:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->avatar:Ljava/lang/String;

    iget-object v2, p1, Lru/rocketbank/core/model/DeliveryScheduledData;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->author:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/model/DeliveryScheduledData;->author:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :catch_0
    return v1

    :cond_1
    return v1
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->body:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->author:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->body:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 77
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->body:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lru/rocketbank/core/model/DeliveryScheduledData;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
