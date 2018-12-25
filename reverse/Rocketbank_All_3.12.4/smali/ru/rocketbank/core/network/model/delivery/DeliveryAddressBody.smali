.class public final Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;
.super Ljava/lang/Object;
.source "DeliveryAddressBody.kt"


# instance fields
.field private final address:Ljava/lang/String;

.field private final latitude:D

.field private final longitude:D

.field private final notes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDLjava/lang/String;)V
    .locals 1

    const-string v0, "notes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    iput-wide p2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    iput-wide p4, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    iput-object p6, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;Ljava/lang/String;DDLjava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p6, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

    :cond_3
    move-object p8, p6

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-wide p6, v2

    invoke-virtual/range {p2 .. p8}, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->copy(Ljava/lang/String;DDLjava/lang/String;)Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;DDLjava/lang/String;)Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;
    .locals 8

    const-string v0, "notes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    iget-wide v2, p1, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    iget-wide v2, p1, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

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

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    return-wide v0
.end method

.method public final getNotes()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long v7, v2, v5

    long-to-int v2, v7

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v4

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

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

    const-string v1, "DeliveryAddressBody(notes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/delivery/DeliveryAddressBody;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
