.class Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$1;
.super Ljava/lang/Object;
.source "AnalyticsResponseData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->setGroups(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$1;->this$0:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 63
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    check-cast p2, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$1;->compare(Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;)I
    .locals 2

    .line 66
    invoke-static {}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
