.class public Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;
.super Ljava/lang/Object;
.source "StatisticsAdapter.kt"


# instance fields
.field private final fullList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation
.end field

.field private final shortList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation
.end field

.field private totalItem:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->fullList:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->shortList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->fullList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->shortList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getFullList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->fullList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getShortList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->shortList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTotalItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->totalItem:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    return-object v0
.end method

.method public final setItems(Ljava/util/List;Ljava/util/List;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ")V"
        }
    .end annotation

    const-string v0, "shortList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->fullList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->fullList:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->shortList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->shortList:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->totalItem:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    return-void
.end method

.method public final setTotalItem(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;->totalItem:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    return-void
.end method
