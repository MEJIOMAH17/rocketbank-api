.class public final Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;
.super Lru/rocketbank/core/utils/presenter/RxPresenter;
.source "TransferAmountPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/presenter/RxPresenter<",
        "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMISSION_OUT:I = 0x66

.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$Companion;

.field private static final INSTANCE_ID:I = 0x65


# instance fields
.field public card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

.field public cardManager:Lru/rocketbank/core/manager/CardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->Companion:Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCOMMISSION_OUT$cp()I
    .locals 1

    .line 12
    sget v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->COMMISSION_OUT:I

    return v0
.end method

.method public static final synthetic access$getINSTANCE_ID$cp()I
    .locals 1

    .line 12
    sget v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->INSTANCE_ID:I

    return v0
.end method


# virtual methods
.method public final binRequest(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
            "-",
            "Lru/rocketbank/core/model/dto/BinResponseData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v2, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->INSTANCE_ID:I

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$binRequest$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$binRequest$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->singleCallOrRestart(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;
    .locals 2

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    if-nez v0, :cond_0

    const-string v1, "card2CardApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCardManager()Lru/rocketbank/core/manager/CardManager;
    .locals 2

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->cardManager:Lru/rocketbank/core/manager/CardManager;

    if-nez v0, :cond_0

    const-string v1, "cardManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final incomeCommission(DLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
            "-",
            "Lru/rocketbank/core/model/response/CommissionStringResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 42
    sget v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->COMMISSION_OUT:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->removeInstance(I)V

    .line 43
    sget v2, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->COMMISSION_OUT:I

    .line 44
    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$incomeCommission$1;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$incomeCommission$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;DLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    .line 43
    invoke-static/range {v1 .. v8}, Lru/rocketbank/core/utils/presenter/RxPresenter;->singleCallOrRestart$default(Lru/rocketbank/core/utils/presenter/RxPresenter;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/RxPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    .line 20
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCardManager()Lru/rocketbank/core/manager/CardManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->cardManager:Lru/rocketbank/core/manager/CardManager;

    return-void
.end method

.method public final outcomeCommission(DLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
            "-",
            "Lru/rocketbank/core/model/response/CommissionStringResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 33
    sget v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->COMMISSION_OUT:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->removeInstance(I)V

    .line 34
    sget v2, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->COMMISSION_OUT:I

    .line 35
    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter$outcomeCommission$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;DLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    .line 34
    invoke-static/range {v1 .. v8}, Lru/rocketbank/core/utils/presenter/RxPresenter;->singleCallOrRestart$default(Lru/rocketbank/core/utils/presenter/RxPresenter;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final setCard2CardApi(Lru/rocketbank/core/network/api/Card2CardApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    return-void
.end method

.method public final setCardManager(Lru/rocketbank/core/manager/CardManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/TransferAmountPresenter;->cardManager:Lru/rocketbank/core/manager/CardManager;

    return-void
.end method
