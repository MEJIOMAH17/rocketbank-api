.class public final Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "TariffsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffsActivity.kt\nru/rocketbank/r2d2/activities/tariffs/TariffsActivity\n*L\n1#1,175:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;

.field private static final TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;

.field private indicator:Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

.field private pagerAdapter:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

.field private tariffSubscription:Lrx/Subscription;

.field private final tariffs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;"
        }
    .end annotation
.end field

.field private final tariffsApi:Lru/rocketbank/core/network/api/TariffsApi;

.field private token:Ljava/lang/String;

.field private userModel:Lru/rocketbank/core/model/UserModel;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->Companion:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->tariffs:Ljava/util/ArrayList;

    .line 36
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v0

    const-string v1, "Subscriptions.empty()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->tariffSubscription:Lrx/Subscription;

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTariffsApi()Lru/rocketbank/core/network/api/TariffsApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->tariffsApi:Lru/rocketbank/core/network/api/TariffsApi;

    return-void
.end method

.method public static final synthetic access$getCurrentTariff(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;Lru/rocketbank/core/model/UserModel;)Lru/rocketbank/core/model/TariffModel;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getCurrentTariff(Lru/rocketbank/core/model/UserModel;)Lru/rocketbank/core/model/TariffModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentTariff$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Lru/rocketbank/core/model/TariffModel;
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNextTariff$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Lru/rocketbank/core/model/TariffModel;
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getNextTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPagerAdapter$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;
    .locals 1

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->pagerAdapter:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    if-nez p0, :cond_0

    const-string v0, "pagerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTariffs$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->tariffs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$setPagerAdapter$p(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->pagerAdapter:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    return-void
.end method

.method private final getCurrentTariff()Lru/rocketbank/core/model/TariffModel;
    .locals 1

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getCurrentTariff(Lru/rocketbank/core/model/UserModel;)Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getCurrentTariff(Lru/rocketbank/core/model/UserModel;)Lru/rocketbank/core/model/TariffModel;
    .locals 1

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/UserModel;->getAccount(Ljava/lang/String;)Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object p1

    return-object p1
.end method

.method private final getNextTariff()Lru/rocketbank/core/model/TariffModel;
    .locals 3

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/model/UserModel;->getAccount(Ljava/lang/String;)Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getNextTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method private final loadTariffs(Lru/rocketbank/core/model/UserModel;)V
    .locals 6

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/UserModel;->getAccount(Ljava/lang/String;)Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->showProgressDialog()V

    .line 81
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountModel.currency.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 83
    new-instance v2, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$1;-><init>(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 88
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 89
    new-instance v2, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;-><init>(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;Ljava/lang/String;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 90
    new-instance v1, Lru/rocketbank/core/utils/rx/RetryWithDelay;

    const/16 v2, 0xa

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4, v5}, Lru/rocketbank/core/utils/rx/RetryWithDelay;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 91
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 92
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 93
    new-instance v1, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$3;-><init>(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;Lru/rocketbank/core/model/UserModel;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    const-string v0, "Observable.just(injector\u2026     }\n                })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->tariffSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->Companion:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getTariffsApi()Lru/rocketbank/core/network/api/TariffsApi;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->tariffsApi:Lru/rocketbank/core/network/api/TariffsApi;

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0064

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026.layout.activity_tariffs)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->token:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->token:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 55
    new-instance v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->pagerAdapter:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;->pager:Landroid/support/v4/view/ViewPager;

    const-string v0, "binding.pager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_2

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->pagerAdapter:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    if-nez v0, :cond_3

    const-string v1, "pagerAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 59
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;

    if-nez p1, :cond_4

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;->pagerIndicator:Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

    const-string v0, "binding.pagerIndicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->indicator:Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->indicator:Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;

    if-nez p1, :cond_5

    const-string v0, "indicator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_6

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void

    .line 61
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "token is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected final onDestroy()V
    .locals 2

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->pagerAdapter:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    if-nez v0, :cond_0

    const-string v1, "pagerAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->onDestroy()V

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->tariffSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->unsubscribe(Lrx/Subscription;)V

    .line 74
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onDestroy()V

    return-void
.end method

.method protected final onStart()V
    .locals 1

    .line 65
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->loadTariffs(Lru/rocketbank/core/model/UserModel;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 146
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 147
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->loadTariffs(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method
