.class public final Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;
.super Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;
.source "OperationViewInputData.kt"


# instance fields
.field private description:Ljava/lang/String;

.field private parentOperation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private shopItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ContextShopItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/data/OperationViewInputData;-><init>(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentOperation()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->parentOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getShopItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ContextShopItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->shopItems:Ljava/util/List;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->description:Ljava/lang/String;

    return-void
.end method

.method public final setParentOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->parentOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public final setShopItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ContextShopItem;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/data/RocketrubleViewInputData;->shopItems:Ljava/util/List;

    return-void
.end method
