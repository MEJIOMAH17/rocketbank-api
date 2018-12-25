.class public final Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;
.super Lru/rocketbank/core/utils/presenter/RxPresenter;
.source "RefillPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/presenter/RxPresenter<",
        "Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$Companion;

.field private static final REQUEST_INSTANCE_ID:I = 0x65


# instance fields
.field public card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->Companion:Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final askMoney(DLru/rocketbank/core/network/model/CardBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lru/rocketbank/core/network/model/CardBody;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;",
            "-",
            "Lru/rocketbank/core/model/card/Card2CardRefillResponseData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/c2c/CardRefillActivity;",
            "-",
            "Lru/rocketbank/core/model/card/Card2CardRefillResponseData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardBody"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v2, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->REQUEST_INSTANCE_ID:I

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter$askMoney$1;-><init>(Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;DLru/rocketbank/core/network/model/CardBody;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->singleCallOrReplay(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;
    .locals 2

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    if-nez v0, :cond_0

    const-string v1, "card2CardApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lru/rocketbank/core/utils/presenter/RxPresenter;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCard2CardApi()Lru/rocketbank/core/network/api/Card2CardApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    return-void
.end method

.method public final resetAskMoney()V
    .locals 1

    .line 21
    sget v0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->REQUEST_INSTANCE_ID:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->removeInstance(I)V

    return-void
.end method

.method public final setCard2CardApi(Lru/rocketbank/core/network/api/Card2CardApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/RefillPresenter;->card2CardApi:Lru/rocketbank/core/network/api/Card2CardApi;

    return-void
.end method
