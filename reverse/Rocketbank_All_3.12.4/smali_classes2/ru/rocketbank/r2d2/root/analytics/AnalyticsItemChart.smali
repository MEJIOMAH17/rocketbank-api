.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart$ItemChartViewHolder;
    }
.end annotation


# instance fields
.field private data:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

.field private onCategorySelectedListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onGroupSelectedListener:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onTagSelectedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 105
    invoke-direct {p0, v1, v0, v2, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->data:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onCategorySelectedListener:Lkotlin/jvm/functions/Function4;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onGroupSelectedListener:Lkotlin/jvm/functions/Function5;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onTagSelectedListener:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->tags:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 105
    invoke-direct/range {p1 .. p6}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getData()Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;
    .locals 1

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->data:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    return-object v0
.end method

.method public final getOnCategorySelectedListener()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onCategorySelectedListener:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getOnGroupSelectedListener()Lkotlin/jvm/functions/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onGroupSelectedListener:Lkotlin/jvm/functions/Function5;

    return-object v0
.end method

.method public final getOnTagSelectedListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onTagSelectedListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final setData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->data:Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    return-void
.end method

.method public final setOnCategorySelectedListener(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onCategorySelectedListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setOnGroupSelectedListener(Lkotlin/jvm/functions/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onGroupSelectedListener:Lkotlin/jvm/functions/Function5;

    return-void
.end method

.method public final setOnTagSelectedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->onTagSelectedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsTagOperation;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->tags:Ljava/util/List;

    return-void
.end method
