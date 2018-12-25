.class public final Lru/rocketbank/core/network/model/delivery/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.kt"


# instance fields
.field private final lat:F

.field private final lng:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    iput p2, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/delivery/Coordinate;FFILjava/lang/Object;)Lru/rocketbank/core/network/model/delivery/Coordinate;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/network/model/delivery/Coordinate;->copy(FF)Lru/rocketbank/core/network/model/delivery/Coordinate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    return v0
.end method

.method public final copy(FF)Lru/rocketbank/core/network/model/delivery/Coordinate;
    .locals 1

    new-instance v0, Lru/rocketbank/core/network/model/delivery/Coordinate;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/core/network/model/delivery/Coordinate;-><init>(FF)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/delivery/Coordinate;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/delivery/Coordinate;

    iget v0, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    iget v1, p1, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    iget p1, p1, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getLat()F
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    return v0
.end method

.method public final getLng()F
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Coordinate(lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/network/model/delivery/Coordinate;->lng:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
