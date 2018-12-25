.class public Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;
.super Ljava/lang/Object;
.source "OperationViewInputData.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationViewInputData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationViewInputData.kt\nru/rocketbank/r2d2/root/operation/data/OperationViewInputData\n*L\n1#1,39:1\n*E\n"
.end annotation


# instance fields
.field private dateString:Ljava/lang/String;

.field private final fullListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation
.end field

.field private final monthValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private operationContext:Lru/rocketbank/core/model/dto/operations/Operation;

.field private placeName:Ljava/lang/String;

.field private final shortListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation
.end field

.field private sourceData:Lru/rocketbank/r2d2/root/operation/data/SourceViewData;

.field private total:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->monthValues:Ljava/util/ArrayList;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->shortListValues:Ljava/util/ArrayList;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->fullListValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getDateString()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->dateString:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullListValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->fullListValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMonthValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->monthValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOperation()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getOperationContext()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->operationContext:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getPlaceName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->placeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortListValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->shortListValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSourceData()Lru/rocketbank/r2d2/root/operation/data/SourceViewData;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->sourceData:Lru/rocketbank/r2d2/root/operation/data/SourceViewData;

    return-object v0
.end method

.method public final getTotal()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->total:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    return-object v0
.end method

.method public final setDateString(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->dateString:Ljava/lang/String;

    return-void
.end method

.method public final setOperationContext(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->operationContext:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/dto/operations/Operation;->setComment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setPlaceName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->placeName:Ljava/lang/String;

    return-void
.end method

.method public final setSourceData(Lru/rocketbank/r2d2/root/operation/data/SourceViewData;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->sourceData:Lru/rocketbank/r2d2/root/operation/data/SourceViewData;

    return-void
.end method

.method public final setTotal(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;->total:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;

    return-void
.end method
