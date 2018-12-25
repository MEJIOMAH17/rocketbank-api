.class public final Lru/rocketbank/r2d2/root/card/binding/CardPresenter;
.super Ljava/lang/Object;
.source "CardPresenter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/card/binding/CardHandler;
.implements Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;,
        Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;,
        Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;,
        Lru/rocketbank/r2d2/root/card/binding/CardPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardPresenter.kt\nru/rocketbank/r2d2/root/card/binding/CardPresenter\n*L\n1#1,527:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$Companion;

.field private static final TAG:Ljava/lang/String; = "CardPresenter"


# instance fields
.field private final accountApi:Lru/rocketbank/core/network/api/AccountApi;

.field private final androidPayApi:Lru/rocketbank/core/network/api/AndroidPayApi;

.field private androidPayWalletSubscription:Lrx/Subscription;

.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private blockSubscription:Lrx/Subscription;

.field private canUseAndroidPay:Z

.field private final compositeSubscription:Lrx/subscriptions/CompositeSubscription;

.field private final floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private isFullMode:Z

.field private lastAccountModel:Lru/rocketbank/core/model/AccountModel;

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private final plasticToken:Ljava/lang/String;

.field private refreshSubscription:Lrx/Subscription;

.field private final rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private final rxSpay:Lru/rocketbank/core/pay/samsung/RxSPay;

.field private final rxTapAndPay:Lru/rocketbank/core/pay/google/RxTapAndPay;

.field private tariffSubscription:Lrx/Subscription;

.field private final token:Ljava/lang/String;

.field private userSubscription:Lrx/Subscription;

.field private view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->Companion:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/r2d2/root/card/binding/CardDetailView;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plasticToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->token:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->plasticToken:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    .line 44
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->androidPayApi:Lru/rocketbank/core/network/api/AndroidPayApi;

    .line 45
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRxTapAndPay()Lru/rocketbank/core/pay/google/RxTapAndPay;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rxTapAndPay:Lru/rocketbank/core/pay/google/RxTapAndPay;

    .line 46
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRxSPay()Lru/rocketbank/core/pay/samsung/RxSPay;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rxSpay:Lru/rocketbank/core/pay/samsung/RxSPay;

    .line 53
    new-instance p1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {p1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 55
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->androidPayWalletSubscription:Lrx/Subscription;

    .line 110
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    .line 112
    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 113
    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 114
    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 115
    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 116
    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAccountApi()Lru/rocketbank/core/network/api/AccountApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    return-void
.end method

.method public static final synthetic access$getAndroidPayApi$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/network/api/AndroidPayApi;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->androidPayApi:Lru/rocketbank/core/network/api/AndroidPayApi;

    return-object p0
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method public static final synthetic access$getBlockSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->blockSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getCanUseAndroidPay$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->canUseAndroidPay:Z

    return p0
.end method

.method public static final synthetic access$getCardAddedPending$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->getCardAddedPending()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLastAccountModel$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/model/AccountModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lastAccountModel:Lru/rocketbank/core/model/AccountModel;

    return-object p0
.end method

.method public static final synthetic access$getPlasticToken$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->plasticToken:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRefreshSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getRxSpay$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/pay/samsung/RxSPay;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rxSpay:Lru/rocketbank/core/pay/samsung/RxSPay;

    return-object p0
.end method

.method public static final synthetic access$getRxTapAndPay$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/core/pay/google/RxTapAndPay;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rxTapAndPay:Lru/rocketbank/core/pay/google/RxTapAndPay;

    return-object p0
.end method

.method public static final synthetic access$getTariffSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Subscription;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->tariffSubscription:Lrx/Subscription;

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lru/rocketbank/r2d2/root/card/binding/CardDetailView;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    return-object p0
.end method

.method public static final synthetic access$onAccount(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->onAccount(Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;)V

    return-void
.end method

.method public static final synthetic access$refreshAndroidPay(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)Lrx/Observable;
    .locals 0

    .line 34
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshAndroidPay()Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setBlockSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lrx/Subscription;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->blockSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setCanUseAndroidPay$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->canUseAndroidPay:Z

    return-void
.end method

.method public static final synthetic access$setCardAddedPending$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->setCardAddedPending(Z)V

    return-void
.end method

.method public static final synthetic access$setLastAccountModel$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lru/rocketbank/core/model/AccountModel;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lastAccountModel:Lru/rocketbank/core/model/AccountModel;

    return-void
.end method

.method public static final synthetic access$setRefreshSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lrx/Subscription;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setTariffSubscription$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lrx/Subscription;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->tariffSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$setView$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lru/rocketbank/r2d2/root/card/binding/CardDetailView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    return-void
.end method

.method private final getCardAddedPending()Z
    .locals 3

    .line 70
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "card"

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->plasticToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final getDensityName()Ljava/lang/String;
    .locals 2

    .line 276
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "RocketApplication.getContext().resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x140

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x280

    if-eq v0, v1, :cond_0

    const-string v0, "xxxhdpi"

    return-object v0

    :cond_0
    const-string v0, "xxxhdpi"

    return-object v0

    :cond_1
    const-string v0, "xxhdpi"

    return-object v0

    :cond_2
    const-string v0, "xhdpi"

    return-object v0

    :cond_3
    const-string v0, "hdpi"

    return-object v0

    :cond_4
    const-string v0, "mdpi"

    return-object v0

    :cond_5
    const-string v0, "ldpi"

    return-object v0
.end method

.method private final onAccount(Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 138
    iget-object v2, v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getBalance()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v5

    iget-boolean v6, v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->isFullMode:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object v11

    .line 139
    iget-object v2, v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getBalance()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object v9

    .line 141
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v2

    invoke-interface {v2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1104c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v15, v2

    goto :goto_1

    .line 144
    :cond_0
    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v2

    invoke-interface {v2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 146
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v2

    invoke-interface {v2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060208

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    :goto_2
    move/from16 v16, v2

    goto :goto_3

    .line 149
    :cond_1
    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v2

    invoke-interface {v2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060221

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_2

    .line 151
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getBetterLimits()Ljava/util/LinkedHashMap;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 152
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getUnlimitedCashouts()Z

    move-result v20

    .line 154
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {v3}, Lru/rocketbank/core/model/TariffModel;->getName()Ljava/lang/String;

    move-result-object v13

    .line 157
    invoke-virtual {v3}, Lru/rocketbank/core/model/TariffModel;->getOption()Lru/rocketbank/core/model/OptionModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lru/rocketbank/core/model/OptionModel;->isActive()Z

    move-result v3

    if-ne v3, v6, :cond_3

    const-string v3, "SMS"

    goto :goto_4

    :cond_3
    const-string v3, "PUSH"

    :goto_4
    move-object v14, v3

    .line 158
    new-instance v3, Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    const-string v4, "blockActionName"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->isBlocked()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getPlasticToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v2

    check-cast v19, Ljava/util/Map;

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/Map;Z)V

    goto :goto_5

    .line 159
    :cond_4
    new-instance v3, Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    const-string v13, ""

    const-string v14, ""

    const-string v4, "blockActionName"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->isBlocked()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getPlasticToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v2

    check-cast v19, Ljava/util/Map;

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/Map;Z)V

    :goto_5
    move-object v14, v3

    .line 161
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "blocked"

    goto :goto_6

    :cond_5
    const-string v2, "active"

    .line 162
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->getDensityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, ""

    .line 165
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->getStatus()Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    move-result-object v5

    const-string v7, "CardPresenter"

    const-string v8, "android pay status "

    .line 172
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CardPresenter"

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "samsung pay status "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;->getStatus()Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v7, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->ordinal()I

    move-result v5

    aget v5, v7, v5

    const v7, 0x7f110058

    const v8, 0x7f110059

    const/4 v10, 0x0

    packed-switch v5, :pswitch_data_0

    .line 203
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_0
    new-instance v5, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$6;

    invoke-direct {v5, v0, v1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$6;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    goto :goto_8

    :pswitch_1
    const v1, 0x7f11005a

    .line 198
    sget-object v5, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$5;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$5;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v12, v5

    move v5, v6

    goto :goto_9

    .line 193
    :pswitch_2
    sget-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$4;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v12, v5

    move v1, v10

    move v5, v1

    goto :goto_9

    .line 189
    :pswitch_3
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$3;

    invoke-direct {v1, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$3;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    goto :goto_7

    .line 184
    :pswitch_4
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$2;

    invoke-direct {v1, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$2;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    :goto_7
    move-object v12, v5

    move v5, v6

    move v1, v7

    goto :goto_9

    .line 179
    :pswitch_5
    new-instance v5, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$1;

    invoke-direct {v5, v0, v1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    :goto_8
    move-object v12, v5

    move v5, v6

    move v1, v8

    .line 209
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$SpCheckResult;->getStatus()Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    move-result-object v13

    sget-object v15, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v13}, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->ordinal()I

    move-result v13

    aget v13, v15, v13

    const/4 v15, 0x0

    packed-switch v13, :pswitch_data_1

    :pswitch_6
    move v6, v10

    goto :goto_a

    .line 229
    :pswitch_7
    new-instance v8, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$spOnClick$3;

    invoke-direct {v8, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$spOnClick$3;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    goto :goto_a

    .line 225
    :pswitch_8
    new-instance v8, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$spOnClick$2;

    invoke-direct {v8, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$spOnClick$2;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    goto :goto_a

    .line 221
    :pswitch_9
    new-instance v8, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$spOnClick$1;

    invoke-direct {v8, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$spOnClick$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    goto :goto_a

    :pswitch_a
    move v7, v8

    .line 237
    :goto_a
    new-instance v13, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;

    invoke-direct {v13, v1, v5, v12}, Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;-><init>(IZLkotlin/jvm/functions/Function0;)V

    .line 238
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;

    invoke-direct {v1, v6, v15, v7}, Lru/rocketbank/r2d2/root/card/binding/SPayParameters;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    .line 240
    new-instance v5, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getPan()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "([\\w, *]{1,4})"

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sget-object v3, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$inputModel$1$1;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onAccount$inputModel$1$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_c

    :cond_7
    :goto_b
    move-object v12, v2

    goto :goto_d

    :cond_8
    :goto_c
    const-string v2, "xxxx xxxx xxxx xxxx"

    goto :goto_b

    .line 245
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    move-object v10, v2

    .line 246
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/AccountModel;->getChangePin()Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object v2

    move-object v7, v5

    move-object v3, v13

    move-object v13, v2

    move-object v15, v3

    move-object/from16 v16, v1

    .line 240
    invoke-direct/range {v7 .. v16}, Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/dto/ChangePin;Lru/rocketbank/r2d2/root/card/binding/CardParameters;Lru/rocketbank/r2d2/root/card/binding/AndroidPayParameters;Lru/rocketbank/r2d2/root/card/binding/SPayParameters;)V

    .line 251
    invoke-direct {v0, v5}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->sendViewModel(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private final refreshAndroidPay()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rxTapAndPay:Lru/rocketbank/core/pay/google/RxTapAndPay;

    invoke-virtual {v0}, Lru/rocketbank/core/pay/google/RxTapAndPay;->getActiveWalledId()Lrx/Observable;

    move-result-object v0

    .line 484
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 495
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const-string v1, "rxTapAndPay.getActiveWal\u2026                        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final refreshMode(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->isFullMode:Z

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lastAccountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->updateBalance(Lru/rocketbank/core/model/AccountModel;)V

    return-void

    :cond_0
    return-void
.end method

.method private final sendViewModel(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->onViewInput(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;)V

    return-void

    :cond_0
    return-void
.end method

.method private final setCardAddedPending(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 76
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "card"

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->plasticToken:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private final updateBalance(Lru/rocketbank/core/model/AccountModel;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getBalance()D

    move-result-wide v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    iget-boolean v3, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->isFullMode:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->updateBalance(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final cardAddedToAP()V
    .locals 1

    const/4 v0, 0x1

    .line 360
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->setCardAddedPending(Z)V

    .line 361
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refresh()V

    return-void
.end method

.method public final changeMode()V
    .locals 1

    .line 408
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->isFullMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshMode(Z)V

    return-void
.end method

.method public final getErrorString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 472
    instance-of v1, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    const v2, 0x7f11018d

    if-eqz v1, :cond_2

    .line 473
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 475
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 477
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "if (genericRequestRespon\u2026rror_occur)\n            }"

    .line 474
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 479
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.error_occur)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isRoubleCard()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lastAccountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final lockCard(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lastAccountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/AccountApi;->blockCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 414
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 415
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;

    invoke-direct {v1, p0, p2, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$lockCard$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->blockSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onChange(Z)V
    .locals 6

    .line 369
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lastAccountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_4

    .line 370
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->showLoader()V

    .line 372
    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/TariffModel;->getOption()Lru/rocketbank/core/model/OptionModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/core/model/OptionModel;->getPermalink()Lru/rocketbank/core/model/enums/PermalinkOption;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 373
    :goto_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 375
    iget-object v3, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-eqz p1, :cond_3

    const-string v4, "apply"

    goto :goto_1

    :cond_3
    const-string v4, "disable"

    :goto_1
    const-string v5, ""

    invoke-interface {v3, v4, v1, v2, v5}, Lru/rocketbank/core/network/api/RocketAPI;->setTariffEnabled(Ljava/lang/String;Lru/rocketbank/core/model/enums/PermalinkOption;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 376
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 377
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 378
    new-instance v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onChange$$inlined$let$lambda$1;-><init>(Lru/rocketbank/core/model/AccountModel;Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Z)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->tariffSubscription:Lrx/Subscription;

    return-void

    :cond_4
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 402
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->destroyNotificationDialog()V

    :cond_0
    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    .line 404
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    return-void
.end method

.method public final onFabClicked(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->isRoubleCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->token:Ljava/lang/String;

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->openRefill(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->openTransfers()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 342
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->userSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->userSubscription:Lrx/Subscription;

    .line 345
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->tariffSubscription:Lrx/Subscription;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 346
    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->tariffSubscription:Lrx/Subscription;

    .line 348
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->blockSubscription:Lrx/Subscription;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 349
    :cond_2
    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->blockSubscription:Lrx/Subscription;

    .line 351
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshSubscription:Lrx/Subscription;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 352
    :cond_3
    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshSubscription:Lrx/Subscription;

    .line 354
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->androidPayWalletSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 356
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->hideLoader()V

    return-void

    :cond_4
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 302
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->showLoader()V

    .line 303
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->getAccount(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 304
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 312
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 313
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$2;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 318
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 319
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 320
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$onResume$3;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->userSubscription:Lrx/Subscription;

    return-void
.end method

.method public final refresh()V
    .locals 1

    .line 365
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method

.method public final refreshProfile(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->refreshProfile()Lrx/Observable;

    move-result-object v0

    .line 453
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshProfile$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->refreshSubscription:Lrx/Subscription;

    return-void
.end method

.method public final setupSpay()V
    .locals 3

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rxSpay:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-virtual {v0}, Lru/rocketbank/core/pay/samsung/RxSPay;->activateApp()Lrx/Completable;

    move-result-object v0

    .line 266
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribeOn(Lrx/Scheduler;)Lrx/Completable;

    move-result-object v0

    .line 267
    sget-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$setupSpay$1;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$setupSpay$1;

    check-cast v1, Lrx/functions/Action0;

    .line 269
    sget-object v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$setupSpay$2;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$setupSpay$2;

    check-cast v2, Lrx/functions/Action1;

    .line 267
    invoke-virtual {v0, v1, v2}, Lrx/Completable;->subscribe(Lrx/functions/Action0;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final unlockCard(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->accountApi:Lru/rocketbank/core/network/api/AccountApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->lastAccountModel:Lru/rocketbank/core/model/AccountModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/AccountApi;->activateCard(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 434
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 435
    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$unlockCard$1;

    invoke-direct {v1, p0, p2, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$unlockCard$1;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->blockSubscription:Lrx/Subscription;

    return-void
.end method

.method public final updateSpay()V
    .locals 3

    .line 255
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->rxSpay:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-virtual {v0}, Lru/rocketbank/core/pay/samsung/RxSPay;->updateApp()Lrx/Completable;

    move-result-object v0

    .line 256
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribeOn(Lrx/Scheduler;)Lrx/Completable;

    move-result-object v0

    .line 257
    sget-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$updateSpay$1;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$updateSpay$1;

    check-cast v1, Lrx/functions/Action0;

    .line 259
    sget-object v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$updateSpay$2;->INSTANCE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$updateSpay$2;

    check-cast v2, Lrx/functions/Action1;

    .line 257
    invoke-virtual {v0, v1, v2}, Lrx/Completable;->subscribe(Lrx/functions/Action0;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public final useAndroidPay(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->canUseAndroidPay:Z

    return-void
.end method

.method public final walletCreated()V
    .locals 1

    .line 520
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->view:Lru/rocketbank/r2d2/root/card/binding/CardDetailView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/card/binding/CardDetailView;->addCartToApWithGreenWay()V

    return-void

    :cond_0
    return-void
.end method
