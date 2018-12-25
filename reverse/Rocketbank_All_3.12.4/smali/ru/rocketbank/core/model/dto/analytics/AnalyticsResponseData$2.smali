.class Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$2;
.super Ljava/lang/Object;
.source "AnalyticsResponseData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->setCategories(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$2;->this$0:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 82
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    check-cast p2, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$2;->compare(Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;)I
    .locals 2

    .line 85
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getAmount()D

    move-result-wide v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getAmount()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
