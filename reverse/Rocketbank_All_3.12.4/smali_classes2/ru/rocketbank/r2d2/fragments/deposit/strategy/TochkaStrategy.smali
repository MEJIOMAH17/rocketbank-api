.class public final Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;
.super Ljava/lang/Object;
.source "TochkaStrategy.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/deposit/strategy/DepositStrategy;


# instance fields
.field private final depositModel:Lru/rocketbank/core/model/DepositModel;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/DepositModel;)V
    .locals 1

    const-string v0, "depositModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;->depositModel:Lru/rocketbank/core/model/DepositModel;

    return-void
.end method


# virtual methods
.method public final balance()D
    .locals 2

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;->depositModel:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getBalance()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public final percent()D
    .locals 2

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;->depositModel:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getPercent()D

    move-result-wide v0

    return-wide v0
.end method

.method public final totalBalance()D
    .locals 4

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;->depositModel:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getBalance()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;->percent()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method
