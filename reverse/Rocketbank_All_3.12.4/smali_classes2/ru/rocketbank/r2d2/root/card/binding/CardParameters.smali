.class public final Lru/rocketbank/r2d2/root/card/binding/CardParameters;
.super Ljava/lang/Object;
.source "DetailCardViewInputModel.kt"


# instance fields
.field private final isLocked:Z

.field private limits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lockStatusColor:I

.field private final lockStatusName:Ljava/lang/String;

.field private final notificationName:Ljava/lang/String;

.field private final plasticToken:Ljava/lang/String;

.field private final tariffName:Ljava/lang/String;

.field private unlimitedCashouts:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;Z)V"
        }
    .end annotation

    const-string v0, "tariffName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockStatusName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limits"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    iput p4, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    iput-boolean p5, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    iput-object p6, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    iput-object p7, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    iput-boolean p8, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/card/binding/CardParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)Lru/rocketbank/r2d2/root/card/binding/CardParameters;
    .locals 10

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    move v9, v1

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/Map;Z)Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/Map;Z)Lru/rocketbank/r2d2/root/card/binding/CardParameters;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;Z)",
            "Lru/rocketbank/r2d2/root/card/binding/CardParameters;"
        }
    .end annotation

    const-string v0, "tariffName"

    move-object v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationName"

    move-object v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockStatusName"

    move-object v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limits"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    move-object v1, v0

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/Map;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    iget v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    iget-boolean v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    iget-boolean p1, p1, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    if-ne v1, p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public final getLimits()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    return-object v0
.end method

.method public final getLockStatusColor()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    return v0
.end method

.method public final getLockStatusName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlasticToken()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getTariffName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnlimitedCashouts()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    if-eqz v1, :cond_6

    move v1, v3

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    return v0
.end method

.method public final setLimits(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/Limit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    return-void
.end method

.method public final setUnlimitedCashouts(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardParameters(tariffName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->tariffName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->notificationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockStatusName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockStatusColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->lockStatusColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plasticToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->plasticToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", limits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->limits:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unlimitedCashouts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->unlimitedCashouts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
