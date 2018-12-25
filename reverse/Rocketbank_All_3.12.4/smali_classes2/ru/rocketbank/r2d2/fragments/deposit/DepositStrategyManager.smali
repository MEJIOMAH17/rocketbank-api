.class public final Lru/rocketbank/r2d2/fragments/deposit/DepositStrategyManager;
.super Ljava/lang/Object;
.source "DepositStrategyManager.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/fragments/deposit/DepositStrategyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/DepositStrategyManager;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositStrategyManager;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/deposit/DepositStrategyManager;->INSTANCE:Lru/rocketbank/r2d2/fragments/deposit/DepositStrategyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getStrategy(Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/r2d2/fragments/deposit/strategy/DepositStrategy;
    .locals 1

    const-string v0, "depositModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/deposit/strategy/TochkaStrategy;-><init>(Lru/rocketbank/core/model/DepositModel;)V

    check-cast v0, Lru/rocketbank/r2d2/fragments/deposit/strategy/DepositStrategy;

    return-object v0
.end method
