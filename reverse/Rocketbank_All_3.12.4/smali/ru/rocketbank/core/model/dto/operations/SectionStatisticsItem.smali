.class public Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
.super Ljava/lang/Object;
.source "SectionStatisticsItem.java"


# instance fields
.field private current:D

.field private previous:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;->current:D

    return-wide v0
.end method

.method public getPrevious()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;->previous:D

    return-wide v0
.end method
