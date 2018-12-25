.class public Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;
.super Ljava/lang/Object;
.source "AnalyticsMerchant.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount:D

.field private id:J

.field private name:Ljava/lang/String;

.field private percentage:D

.field private type:Ljava/lang/String;

.field private userpicUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userpic_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->amount:D

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->percentage:D

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserpicUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->userpicUrl:Ljava/lang/String;

    return-object v0
.end method
