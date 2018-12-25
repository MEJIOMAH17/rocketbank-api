.class public final Lru/rocketbank/core/network/model/delivery/TimeInterval;
.super Ljava/lang/Object;
.source "TimeInterval.kt"


# instance fields
.field private final interval:Ljava/lang/String;

.field private final intervalNumber:I

.field private final isEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "interval"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    iput p2, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    iput-boolean p3, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/delivery/TimeInterval;Ljava/lang/String;IZILjava/lang/Object;)Lru/rocketbank/core/network/model/delivery/TimeInterval;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/network/model/delivery/TimeInterval;->copy(Ljava/lang/String;IZ)Lru/rocketbank/core/network/model/delivery/TimeInterval;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;IZ)Lru/rocketbank/core/network/model/delivery/TimeInterval;
    .locals 1

    const-string v0, "interval"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/delivery/TimeInterval;

    invoke-direct {v0, p1, p2, p3}, Lru/rocketbank/core/network/model/delivery/TimeInterval;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/core/network/model/delivery/TimeInterval;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/core/network/model/delivery/TimeInterval;

    iget-object v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    iget v3, p1, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    iget-boolean p1, p1, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    if-ne v1, p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final getInterval()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntervalNumber()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeInterval(interval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->interval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intervalNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->intervalNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/core/network/model/delivery/TimeInterval;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
