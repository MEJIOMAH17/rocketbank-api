.class public final Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;
.super Lru/rocketbank/core/utils/presenter/RxPresenter;
.source "ProcessPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/presenter/RxPresenter<",
        "Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter$Companion;

.field private static final REQUEST_INSTANCE_ID:I = 0x66

.field private static final TAG:Ljava/lang/String; = "ProcessPresenter"

.field public static final presenterId:Ljava/util/UUID;


# instance fields
.field public card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;->Companion:Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter$Companion;

    const-string v0, "9165e691-36fd-40c7-adbd-bb77e88913d3"

    .line 36
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"9165e69\u2026-40c7-adbd-bb77e88913d3\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;->presenterId:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;
    .locals 2

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    if-nez v0, :cond_0

    const-string v1, "card2CardApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/RxPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    return-void
.end method

.method public final resetSendMoney()V
    .locals 1

    const/16 v0, 0x66

    .line 22
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;->removeInstance(I)V

    return-void
.end method

.method public final sendMoney(Lru/rocketbank/core/network/model/SendMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/SendMoneyBody;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;",
            "-",
            "Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/CardTransferProcessActivity;",
            "-",
            "Lru/rocketbank/core/model/transfers/card/Card2CardTransferResponseData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sendMoneyBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter$sendMoney$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter$sendMoney$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;Lru/rocketbank/core/network/model/SendMoneyBody;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v2, 0x66

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;->singleCallOrReplay(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setCard2CardApi(Lru/rocketbank/core/network/api/Card2CardApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/ProcessPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    return-void
.end method
