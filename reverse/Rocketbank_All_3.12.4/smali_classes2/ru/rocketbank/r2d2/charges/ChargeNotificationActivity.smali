.class public final Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ChargeNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChargeNotificationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeNotificationActivity.kt\nru/rocketbank/r2d2/charges/ChargeNotificationActivity\n*L\n1#1,160:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$Companion;

.field public static final KEY_CTC:Ljava/lang/String; = "KEY_CTC"

.field public static final KEY_DRIVER_LICENCE:Ljava/lang/String; = "KEY_DRIVER_LICENCE"

.field public static final KEY_INN:Ljava/lang/String; = "KEY_INN"

.field public static final KEY_PENALTY_TAX_NOTIFICATION_ENABLED:Ljava/lang/String; = "KEY_PENALTY_TAX_NOTIFICATION_ENABLED"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private patchProfileSubscription:Lrx/Subscription;

.field private penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

.field private penaltyTaxNotificationEnabled:Z

.field private taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

.field private userApi:Lru/rocketbank/core/network/api/UserApi;

.field private validSubscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 48
    new-instance v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    .line 49
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    return-void
.end method

.method public static final synthetic access$checkCharges(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->checkCharges()V

    return-void
.end method

.method public static final synthetic access$getAuthorization$p(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)Lru/rocketbank/core/user/Authorization;
    .locals 0

    .line 30
    iget-object p0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object p0
.end method

.method public static final synthetic access$getPenaltyTaxNotificationEnabled$p(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    return p0
.end method

.method public static final synthetic access$setAuthorization$p(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;Lru/rocketbank/core/user/Authorization;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$setPenaltyTaxNotificationEnabled$p(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    return-void
.end method

.method public static final synthetic access$updateNextButton(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->updateNextButton()V

    return-void
.end method

.method private final checkCharges()V
    .locals 9

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 90
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 91
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v8, v1

    .line 92
    sget-object v2, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const-string v4, ""

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 149
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final updateNextButton()V
    .locals 4

    .line 145
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "btnNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->isValid()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    .line 144
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-nez v1, :cond_7

    .line 145
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-direct {p0, v3}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 55
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->userApi:Lru/rocketbank/core/network/api/UserApi;

    .line 57
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c0031

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "DataBindingUtil.setConte\u2026vity_charge_notification)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    .line 59
    sget v1, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled$1385ff()V

    .line 62
    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->toolbarShadow:I

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "toolbarShadow"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    const-string v2, "KEY_CTC"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_CTC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 65
    :cond_5
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_6

    const-string v2, "KEY_DRIVER_LICENCE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_DRIVER_LICENCE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 66
    :cond_8
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_b

    if-eqz p1, :cond_9

    const-string v2, "KEY_INN"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_INN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    :cond_b
    if-eqz p1, :cond_c

    const-string v1, "KEY_PENALTY_TAX_NOTIFICATION_ENABLED"

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KEY_PENALTY_TAX_NOTIFICATION_ENABLED"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    .line 69
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->setTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;)V

    .line 70
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->setPenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V

    .line 71
    iget-boolean p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->setPenaltyTaxNotificationEnabled(Ljava/lang/Boolean;)V

    .line 73
    iget-object p1, v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->switcherPenaltyTax:Landroid/support/v7/widget/SwitchCompat;

    const-string v1, "binding.switcherPenaltyTax"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 75
    iget-object p1, v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->switcherPenaltyTax:Landroid/support/v7/widget/SwitchCompat;

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    sget p1, Lru/rocketbank/r2d2/R$id;->editTextCtc:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "dd SS dddddd"

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 81
    sget p1, Lru/rocketbank/r2d2/R$id;->editTextDriverLicence:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "dd SS dddddd"

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 83
    sget p1, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    const v0, 0x7f1103f5

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setText(I)V

    .line 84
    sget p1, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget p1, Lru/rocketbank/r2d2/R$id;->buttonCheck:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$3;-><init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final onPause()V
    .locals 1

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->patchProfileSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->unsubscribe(Lrx/Subscription;)V

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->validSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->unsubscribe(Lrx/Subscription;)V

    .line 137
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 138
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 4

    .line 126
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 127
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getValidObservable()Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getValidObservable()Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    .line 128
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 129
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 130
    new-instance v1, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onResume$1;-><init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onResume$2;->INSTANCE:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onResume$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_0

    new-instance v3, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_0
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->validSubscription:Lrx/Subscription;

    .line 131
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->updateNextButton()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_CTC"

    .line 153
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_DRIVER_LICENCE"

    .line 154
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_INN"

    .line 155
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_PENALTY_TAX_NOTIFICATION_ENABLED"

    .line 156
    iget-boolean v1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStart()V
    .locals 1

    .line 121
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 122
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    return-void
.end method

.method public final patchProfile()V
    .locals 5

    .line 96
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->showProgressDialog()V

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 101
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 102
    :goto_1
    iget-object v3, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_2
    new-instance v3, Lru/rocketbank/core/network/model/PatchProfileBody;

    iget-boolean v4, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->penaltyTaxNotificationEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v0, v2, v1, v4}, Lru/rocketbank/core/network/model/PatchProfileBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->userApi:Lru/rocketbank/core/network/api/UserApi;

    if-nez v0, :cond_3

    const-string v1, "userApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, v3}, Lru/rocketbank/core/network/api/UserApi;->patchProfile(Lru/rocketbank/core/network/model/PatchProfileBody;)Lrx/Observable;

    move-result-object v0

    .line 106
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 107
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 108
    new-instance v1, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$1;-><init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    check-cast v1, Lrx/functions/Action1;

    .line 114
    new-instance v2, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$2;-><init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    check-cast v2, Lrx/functions/Action1;

    .line 108
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->patchProfileSubscription:Lrx/Subscription;

    return-void
.end method
