.class public Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;
.super Ljava/lang/Object;
.source "AnalyticsGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount:D

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private percentage:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCategory()J
    .locals 2

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "other"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x1b6

    goto :goto_0

    :cond_0
    const-string v1, "transfer"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x159

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x170

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->amount:D

    return-wide v0
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 3

    .line 51
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getCategory()J

    move-result-wide v0

    .line 52
    sget-object v2, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {v2, v0, v1}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 3

    .line 46
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getCategory()J

    move-result-wide v0

    .line 47
    sget-object v2, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {v2, v0, v1}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->percentage:D

    return-wide v0
.end method

.method public setAmount(D)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->amount:D

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->name:Ljava/lang/String;

    return-void
.end method

.method public setPercentage(D)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->percentage:D

    return-void
.end method
