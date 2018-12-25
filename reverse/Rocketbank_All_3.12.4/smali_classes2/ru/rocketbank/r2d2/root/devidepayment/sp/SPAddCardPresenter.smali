.class public final Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "SPAddCardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSPAddCardPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SPAddCardPresenter.kt\nru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter\n*L\n1#1,60:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private addCardSubscription:Lrx/Subscription;

.field private final androidPayApi:Lru/rocketbank/core/network/api/AndroidPayApi;

.field private final spay$delegate:Lkotlin/Lazy;

.field private view:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "spay"

    const-string v4, "getSpay()Lru/rocketbank/core/pay/samsung/RxSPay;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$spay$2;->INSTANCE:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$spay$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->spay$delegate:Lkotlin/Lazy;

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAndroidPayApi()Lru/rocketbank/core/network/api/AndroidPayApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->androidPayApi:Lru/rocketbank/core/network/api/AndroidPayApi;

    .line 20
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->addCardSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getSpay$p(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)Lru/rocketbank/core/pay/samsung/RxSPay;
    .locals 0

    .line 13
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->getSpay()Lru/rocketbank/core/pay/samsung/RxSPay;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    return-object p0
.end method

.method public static final synthetic access$setView$p(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    return-void
.end method

.method private final getSpay()Lru/rocketbank/core/pay/samsung/RxSPay;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->spay$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/pay/samsung/RxSPay;

    return-object v0
.end method


# virtual methods
.method public final addCard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cardToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;->showProgress()V

    .line 33
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->addCardSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->androidPayApi:Lru/rocketbank/core/network/api/AndroidPayApi;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lru/rocketbank/core/network/api/AndroidPayApi;->getOpcAndAddress(Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object p1

    .line 35
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 36
    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$1;-><init>(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 37
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$2;-><init>(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)V

    check-cast v0, Lrx/functions/Action1;

    .line 43
    new-instance v1, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter$addCard$3;-><init>(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;)V

    check-cast v1, Lrx/functions/Action1;

    .line 38
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->addCardSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 56
    invoke-super {p0}, Lru/rocketbank/core/utils/presenter/Presenter;->onDestroy()V

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->addCardSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method

.method public final onStart(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    return-void
.end method

.method public final onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->view:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    return-void
.end method
