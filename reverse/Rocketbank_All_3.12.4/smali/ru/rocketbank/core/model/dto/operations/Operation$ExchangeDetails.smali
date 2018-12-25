.class public final Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;
.super Ljava/lang/Object;
.source "Operation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/dto/operations/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExchangeDetails"
.end annotation


# instance fields
.field private final from_amount:D

.field private final from_currency:Ljava/lang/String;

.field private final rate:D

.field private final to_amount:D

.field private final to_currency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 1

    const-string v0, "from_currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to_currency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    iput-wide p3, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    iput-wide p5, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    iput-wide p7, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;Ljava/lang/String;Ljava/lang/String;DDDILjava/lang/Object;)Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;
    .locals 10

    move-object v0, p0

    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    goto :goto_3

    :cond_3
    move-wide v6, p5

    :goto_3
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_4

    iget-wide v8, v0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

    goto :goto_4

    :cond_4
    move-wide/from16 v8, p7

    :goto_4
    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    invoke-virtual/range {v0 .. v8}, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->copy(Ljava/lang/String;Ljava/lang/String;DDD)Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;DDD)Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;
    .locals 10

    const-string v0, "from_currency"

    move-object v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to_currency"

    move-object v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    move-object v1, v0

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;-><init>(Ljava/lang/String;Ljava/lang/String;DDD)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    iget-wide v2, p1, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    iget-wide v2, p1, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

    iget-wide v2, p1, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

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

.method public final getFrom_amount()D
    .locals 2

    .line 150
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    return-wide v0
.end method

.method public final getFrom_currency()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

    return-wide v0
.end method

.method public final getTo_amount()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    return-wide v0
.end method

.method public final getTo_currency()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long v6, v1, v4

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    ushr-long v4, v1, v3

    xor-long v6, v1, v4

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    ushr-long v3, v1, v3

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExchangeDetails(from_currency="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to_currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from_amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->from_amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", to_amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->to_amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;->rate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
