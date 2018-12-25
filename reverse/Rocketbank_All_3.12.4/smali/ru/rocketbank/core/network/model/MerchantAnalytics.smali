.class public final Lru/rocketbank/core/network/model/MerchantAnalytics;
.super Ljava/lang/Object;
.source "MerchantAnalytics.kt"


# instance fields
.field private final days30:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "30_days"
    .end annotation
.end field

.field private final days7:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "7_days"
    .end annotation
.end field

.field private final thisMonth:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "this_month"
    .end annotation
.end field

.field private final total:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDays30()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/network/model/MerchantAnalytics;->days30:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public final getDays7()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/network/model/MerchantAnalytics;->days7:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public final getThisMonth()Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/MerchantAnalytics;->thisMonth:Lru/rocketbank/core/model/dto/operations/SectionStatisticsItem;

    return-object v0
.end method

.method public final getTotal()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/network/model/MerchantAnalytics;->total:D

    return-wide v0
.end method
