.class public final Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;
.super Lru/rocketbank/core/utils/presenter/RxPresenter;
.source "SafeAndCardTransferPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/presenter/RxPresenter<",
        "Lru/rocketbank/r2d2/activities/safe/TransferActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeAndCardTransferPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeAndCardTransferPresenter.kt\nru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter\n*L\n1#1,85:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$Companion;

.field public static final INFO_INSTANCE:I = 0x65

.field public static final SEND_INSTANCE:I = 0x64


# instance fields
.field private final accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private final depositApi:Lru/rocketbank/core/network/api/DepositApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->Companion:Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/RxPresenter;-><init>()V

    .line 15
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    .line 16
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDepositApi()Lru/rocketbank/core/network/api/DepositApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->depositApi:Lru/rocketbank/core/network/api/DepositApi;

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$getAccountApi$p(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;)Lru/rocketbank/core/network/api/AccountApi;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    return-object p0
.end method

.method public static final synthetic access$getDepositApi$p(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;)Lru/rocketbank/core/network/api/DepositApi;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->depositApi:Lru/rocketbank/core/network/api/DepositApi;

    return-object p0
.end method

.method public static bridge synthetic sendMoney$default(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->sendMoney(Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final removeSendMoney()V
    .locals 1

    const/16 v0, 0x64

    .line 77
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->removeInstance(I)V

    return-void
.end method

.method public final sendMoney(Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/safe/TransferActivity;",
            "-",
            "Lru/rocketbank/core/network/model/RefillCardResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/safe/TransferActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/safe/TransferActivity;",
            "-",
            "Lru/rocketbank/core/network/model/RefillCardResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "moveMoneyBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/MoveMoneyBody;->getTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->getProductImmediate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    instance-of v1, v0, Lru/rocketbank/core/model/DepositModel;

    if-eqz v1, :cond_0

    const/16 v3, 0x64

    .line 27
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$1;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->singleCallOrReplay(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 33
    :cond_0
    instance-of v0, v0, Lru/rocketbank/core/model/facade/Account;

    if-eqz v0, :cond_1

    const/16 v2, 0x64

    .line 34
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$2;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->singleCallOrReplay(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public final sendMoneyDescription(Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/MoveMoneyBody;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/safe/TransferActivity;",
            "-",
            "Lru/rocketbank/core/network/model/RefillCardResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/activities/safe/TransferActivity;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "moveMoneyBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/MoveMoneyBody;->getTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 48
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->getProductImmediate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    instance-of v1, v0, Lru/rocketbank/core/model/DepositModel;

    const/16 v8, 0x65

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$1;

    move-object v2, v1

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$1;-><init>(Ljava/lang/Object;Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v8, v1, p2, p3}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->simpleCall(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 61
    :cond_0
    instance-of v0, v0, Lru/rocketbank/core/model/facade/Account;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;Lru/rocketbank/core/network/model/MoveMoneyBody;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v8, v0, p2, p3}, Lru/rocketbank/r2d2/fragments/transfers/SafeAndCardTransferPresenter;->simpleCall(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    return-void
.end method
