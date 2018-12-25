.class public final Lru/rocketbank/core/model/RocketRoubles;
.super Ljava/lang/Object;
.source "RocketRoubles.kt"


# instance fields
.field private rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/dto/RocketRublesData;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/RocketRoubles;Lru/rocketbank/core/model/dto/RocketRublesData;ILjava/lang/Object;)Lru/rocketbank/core/model/RocketRoubles;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/RocketRoubles;->copy(Lru/rocketbank/core/model/dto/RocketRublesData;)Lru/rocketbank/core/model/RocketRoubles;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/rocketbank/core/model/dto/RocketRublesData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    return-object v0
.end method

.method public final copy(Lru/rocketbank/core/model/dto/RocketRublesData;)Lru/rocketbank/core/model/RocketRoubles;
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/RocketRoubles;

    invoke-direct {v0, p1}, Lru/rocketbank/core/model/RocketRoubles;-><init>(Lru/rocketbank/core/model/dto/RocketRublesData;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/RocketRoubles;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/RocketRoubles;

    iget-object v0, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    iget-object p1, p1, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

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

.method public final getRocketrubles()Lru/rocketbank/core/model/dto/RocketRublesData;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setRocketrubles(Lru/rocketbank/core/model/dto/RocketRublesData;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RocketRoubles(rocketrubles="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/RocketRoubles;->rocketrubles:Lru/rocketbank/core/model/dto/RocketRublesData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
