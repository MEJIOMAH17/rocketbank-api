.class public final Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;
.super Ljava/lang/Object;
.source "MilesInformationData.kt"


# instance fields
.field private amount:D

.field private miles:D

.field private milesCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>(DLjava/lang/String;D)V
    .locals 1

    const-string v0, "milesCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    iput-object p3, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    iput-wide p4, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;DLjava/lang/String;DILjava/lang/Object;)Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-wide p4, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    :cond_2
    move-wide v4, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->copy(DLjava/lang/String;D)Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    return-wide v0
.end method

.method public final copy(DLjava/lang/String;D)Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;
    .locals 7

    const-string v0, "milesCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;-><init>(DLjava/lang/String;D)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    iget-wide v2, p1, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    iget-wide v2, p1, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

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

.method public final getAmount()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    return-wide v0
.end method

.method public final getMiles()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    return-wide v0
.end method

.method public final getMilesCurrency()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long v5, v0, v3

    long-to-int v0, v5

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long v1, v3, v2

    xor-long v5, v3, v1

    long-to-int v1, v5

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAmount(D)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    return-void
.end method

.method public final setMiles(D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    return-void
.end method

.method public final setMilesCurrency(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MilesInformationData(miles="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->miles:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", milesCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->milesCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/r2d2/root/operation/data/MilesInformationData;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
