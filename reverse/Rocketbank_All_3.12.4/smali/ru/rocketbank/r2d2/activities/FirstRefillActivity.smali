.class public final Lru/rocketbank/r2d2/activities/FirstRefillActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "FirstRefillActivity.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/listener/CardNumberListener;
.implements Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;
.implements Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

.field private creditCard:Lru/rocketbank/core/widgets/CreditCardView;

.field private nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

.field private refreshSubscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->Companion:Lru/rocketbank/r2d2/activities/FirstRefillActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method private final openFeedIfNotNew()V
    .locals 3

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getStatus()Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/enums/Status;->NEW:Lru/rocketbank/core/model/enums/Status;

    if-eq v0, v1, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final allCardIsValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "date"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cvv"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 179
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final binReady(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final cancelBin()V
    .locals 0

    return-void
.end method

.method public final cardChanged()V
    .locals 0

    return-void
.end method

.method public final cardInvalid()V
    .locals 2

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 184
    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final cardNumberIsInvalid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final cardNumberIsValid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final cvvIsInvalid()V
    .locals 0

    return-void
.end method

.method public final cvvIsValid()V
    .locals 0

    return-void
.end method

.method public final dateIsInvalid()V
    .locals 0

    return-void
.end method

.method public final dateIsValid()V
    .locals 0

    return-void
.end method

.method public final nextPressed(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    if-nez p1, :cond_0

    const-string v0, "creditCard"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CreditCardView;->getCardNumber()Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    if-nez v0, :cond_1

    const-string v1, "creditCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/CreditCardView;->getValidThru()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    if-nez v1, :cond_2

    const-string v2, "creditCard"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/CreditCardView;->getCvv()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Lru/rocketbank/core/model/CardData;

    invoke-direct {v2, p1, v0, v1}, Lru/rocketbank/core/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object p1, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardData;Lru/rocketbank/core/model/CardModel;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCashPressed(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lru/rocketbank/r2d2/activities/CashRefillActivity;->Companion:Lru/rocketbank/r2d2/activities/CashRefillActivity$Companion;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/activities/CashRefillActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 79
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->noob()V

    .line 83
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logStartFirstRefillFacebook()V

    .line 85
    new-instance p1, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;-><init>()V

    .line 86
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c003e

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    const-string v2, "DataBindingUtil.setConte\u2026ut.activity_first_refill)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez v1, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const v3, 0x7f1101a2

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f110315

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 88
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    .line 89
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez v1, :cond_2

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;)V

    .line 90
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez v1, :cond_3

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez p1, :cond_4

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    const-string v1, "binding.cardAction!!.creditCard"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    .line 93
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    if-nez p1, :cond_6

    const-string v1, "creditCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    move-object v1, p0

    check-cast v1, Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumberListener(Lru/rocketbank/core/widgets/listener/CardNumberListener;)V

    .line 94
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    if-nez p1, :cond_7

    const-string v1, "creditCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1047
    :cond_7
    iget-object p1, p1, Lru/rocketbank/core/widgets/CreditCardView;->newCard:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_8

    const-string v1, "newCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const v1, 0x7f110057

    .line 94
    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    const-string p1, "input_method"

    .line 96
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 97
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez v1, :cond_a

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->scroll:Landroid/support/v4/widget/NestedScrollView;

    new-instance v2, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onCreate$1;

    invoke-direct {v2, p0, p1}, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/activities/FirstRefillActivity;Landroid/view/inputmethod/InputMethodManager;)V

    check-cast v2, Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    new-instance p1, Lru/rocketbank/r2d2/utils/NfcInputCard;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lru/rocketbank/r2d2/utils/NfcInputCard;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 110
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

    if-nez v0, :cond_0

    const-string v1, "nfcInputCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->onStop()V

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->refreshSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_1
    return-void
.end method

.method public final onPressedPhoto(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->takeAShot()V

    return-void
.end method

.method public final onReqPressed(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final onResume()V
    .locals 4

    .line 120
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 122
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->openFeedIfNotNew()V

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->nfcInputCard:Lru/rocketbank/r2d2/utils/NfcInputCard;

    if-nez v0, :cond_0

    const-string v1, "nfcInputCard"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/NfcInputCard;->onCreate()V

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->getAbility()Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v2, "android.hardware.nfc"

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.hardware.camera"

    .line 130
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 129
    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->updateAbility(ZZ)V

    const-wide/16 v0, 0xa

    .line 132
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 133
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 134
    new-instance v1, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onResume$1;-><init>(Lru/rocketbank/r2d2/activities/FirstRefillActivity;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->refreshSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onSupportPressed(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p1, Lru/rocketbank/r2d2/activities/SupportChatActivity;->Companion:Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 142
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->openFeedIfNotNew()V

    return-void
.end method
