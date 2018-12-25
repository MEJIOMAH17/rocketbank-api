.class public final Lru/rocketbank/core/model/dto/RocketRublesData;
.super Ljava/lang/Object;
.source "RocketRublesData.kt"


# instance fields
.field private balance:F

.field private history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private months:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private total:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lru/rocketbank/core/model/dto/RocketRublesData;-><init>(Ljava/util/List;Ljava/util/List;FFLjava/util/List;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;FFLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;FF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    iput-object p2, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    iput p3, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    iput p4, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    iput-object p5, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;FFLjava/util/List;ILkotlin/jvm/internal/Ref;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move v2, p2

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move v3, p2

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move p4, v2

    move p5, v3

    .line 11
    invoke-direct/range {p1 .. p6}, Lru/rocketbank/core/model/dto/RocketRublesData;-><init>(Ljava/util/List;Ljava/util/List;FFLjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/dto/RocketRublesData;Ljava/util/List;Ljava/util/List;FFLjava/util/List;ILjava/lang/Object;)Lru/rocketbank/core/model/dto/RocketRublesData;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lru/rocketbank/core/model/dto/RocketRublesData;->copy(Ljava/util/List;Ljava/util/List;FFLjava/util/List;)Lru/rocketbank/core/model/dto/RocketRublesData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    return-object v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;FFLjava/util/List;)Lru/rocketbank/core/model/dto/RocketRublesData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;FF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Lru/rocketbank/core/model/dto/RocketRublesData;"
        }
    .end annotation

    new-instance v6, Lru/rocketbank/core/model/dto/RocketRublesData;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/model/dto/RocketRublesData;-><init>(Ljava/util/List;Ljava/util/List;FFLjava/util/List;)V

    return-object v6
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/dto/RocketRublesData;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/dto/RocketRublesData;

    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    iget-object v1, p1, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    iget v1, p1, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    iget v1, p1, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    iget-object p1, p1, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

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

.method public final getBalance()F
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    return v0
.end method

.method public final getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    return-object v0
.end method

.method public final getMonths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    return-object v0
.end method

.method public final getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    return-object v0
.end method

.method public final getTotal()F
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBalance(F)V
    .locals 0

    .line 10
    iput p1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    return-void
.end method

.method public final setHistory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    return-void
.end method

.method public final setMonths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    return-void
.end method

.method public final setOperations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    return-void
.end method

.method public final setTotal(F)V
    .locals 0

    .line 9
    iput p1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RocketRublesData(history="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->history:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->operations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->total:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->balance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/dto/RocketRublesData;->months:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
