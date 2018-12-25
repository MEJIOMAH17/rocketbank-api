.class public Lru/rocketbank/core/model/dto/operations/SectionStatisticsResponseData;
.super Ljava/lang/Object;
.source "SectionStatisticsResponseData.java"


# instance fields
.field private days30:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "30_days"
    .end annotation
.end field

.field private days7:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7_days"
    .end annotation
.end field

.field private thisMonth:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "this_month"
    .end annotation
.end field

.field private total:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDays30()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/SectionStatisticsResponseData;->days30:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public getDays7()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/SectionStatisticsResponseData;->days7:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public getThisMonth()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/SectionStatisticsResponseData;->thisMonth:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public getTotal()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/SectionStatisticsResponseData;->total:D

    return-wide v0
.end method
