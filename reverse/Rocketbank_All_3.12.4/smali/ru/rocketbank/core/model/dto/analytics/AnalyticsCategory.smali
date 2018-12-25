.class public Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;
.super Ljava/lang/Object;
.source "AnalyticsCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount:D

.field private icon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private percentage:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->amount:D

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->percentage:D

    return-wide v0
.end method
