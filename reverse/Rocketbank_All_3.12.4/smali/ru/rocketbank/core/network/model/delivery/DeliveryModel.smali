.class public final Lru/rocketbank/core/network/model/delivery/DeliveryModel;
.super Ljava/lang/Object;
.source "DeliveryModel.kt"


# instance fields
.field private final lat:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private final lng:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field private final sender:Lru/rocketbank/core/network/model/delivery/Sender;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "admin_user"
    .end annotation
.end field

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDLru/rocketbank/core/network/model/delivery/Sender;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    iput-wide p2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    iput-wide p4, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    iput-object p6, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/delivery/DeliveryModel;Ljava/lang/String;DDLru/rocketbank/core/network/model/delivery/Sender;ILjava/lang/Object;)Lru/rocketbank/core/network/model/delivery/DeliveryModel;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p6, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    :cond_3
    move-object p8, p6

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-wide p6, v2

    invoke-virtual/range {p2 .. p8}, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->copy(Ljava/lang/String;DDLru/rocketbank/core/network/model/delivery/Sender;)Lru/rocketbank/core/network/model/delivery/DeliveryModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    return-wide v0
.end method

.method public final component4()Lru/rocketbank/core/network/model/delivery/Sender;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;DDLru/rocketbank/core/network/model/delivery/Sender;)Lru/rocketbank/core/network/model/delivery/DeliveryModel;
    .locals 8

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/network/model/delivery/DeliveryModel;-><init>(Ljava/lang/String;DDLru/rocketbank/core/network/model/delivery/Sender;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/delivery/DeliveryModel;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/delivery/DeliveryModel;

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    iget-wide v2, p1, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    iget-wide v2, p1, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    iget-object p1, p1, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getLat()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    return-wide v0
.end method

.method public final getLng()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    return-wide v0
.end method

.method public final getSender()Lru/rocketbank/core/network/model/delivery/Sender;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long v7, v2, v5

    long-to-int v2, v7

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v4

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeliveryModel(text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryModel;->sender:Lru/rocketbank/core/network/model/delivery/Sender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
