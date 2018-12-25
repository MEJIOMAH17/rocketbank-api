.class public final Lru/rocketbank/core/network/model/TagAnalytics;
.super Ljava/lang/Object;
.source "TagAnalytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/TagAnalytics$Analytics;,
        Lru/rocketbank/core/network/model/TagAnalytics$Tag;
    }
.end annotation


# instance fields
.field private analytics:Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnalytics()Lru/rocketbank/core/network/model/TagAnalytics$Analytics;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/network/model/TagAnalytics;->analytics:Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

    return-object v0
.end method

.method public final getDays30()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/network/model/TagAnalytics;->days30:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public final getDays7()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/network/model/TagAnalytics;->days7:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public final getThisMonth()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/network/model/TagAnalytics;->thisMonth:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public final getTotal()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lru/rocketbank/core/network/model/TagAnalytics;->total:D

    return-wide v0
.end method

.method public final setAnalytics(Lru/rocketbank/core/network/model/TagAnalytics$Analytics;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/network/model/TagAnalytics;->analytics:Lru/rocketbank/core/network/model/TagAnalytics$Analytics;

    return-void
.end method

.method public final setDays30(Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/core/network/model/TagAnalytics;->days30:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-void
.end method

.method public final setDays7(Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/network/model/TagAnalytics;->days7:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-void
.end method

.method public final setThisMonth(Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/network/model/TagAnalytics;->thisMonth:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-void
.end method

.method public final setTotal(D)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lru/rocketbank/core/network/model/TagAnalytics;->total:D

    return-void
.end method
