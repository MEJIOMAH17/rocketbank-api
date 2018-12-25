.class final Lru/rocketbank/core/model/DeliveryScheduledData$1;
.super Ljava/lang/Object;
.source "DeliveryScheduledData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/DeliveryScheduledData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/core/model/DeliveryScheduledData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/DeliveryScheduledData$1;->createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/model/DeliveryScheduledData;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/core/model/DeliveryScheduledData;
    .locals 2

    .line 20
    new-instance v0, Lru/rocketbank/core/model/DeliveryScheduledData;

    invoke-direct {v0}, Lru/rocketbank/core/model/DeliveryScheduledData;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/core/model/DeliveryScheduledData;->access$002(Lru/rocketbank/core/model/DeliveryScheduledData;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/core/model/DeliveryScheduledData;->access$102(Lru/rocketbank/core/model/DeliveryScheduledData;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/core/model/DeliveryScheduledData;->access$202(Lru/rocketbank/core/model/DeliveryScheduledData;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/DeliveryScheduledData$1;->newArray(I)[Lru/rocketbank/core/model/DeliveryScheduledData;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lru/rocketbank/core/model/DeliveryScheduledData;
    .locals 0

    .line 15
    new-array p1, p1, [Lru/rocketbank/core/model/DeliveryScheduledData;

    return-object p1
.end method
