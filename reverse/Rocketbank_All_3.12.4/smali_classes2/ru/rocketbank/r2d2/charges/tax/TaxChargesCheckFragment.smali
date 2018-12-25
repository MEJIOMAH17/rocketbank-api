.class public final Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "TaxChargePaymentDetailsFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaxChargePaymentDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaxChargePaymentDetailsFragment.kt\nru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment\n*L\n1#1,114:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$Companion;

.field public static final KEY_INN:Ljava/lang/String; = "KEY_CTC"

.field public static final KEY_TAX_CHARGE:Ljava/lang/String; = "KEY_TAX_CHARGE"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

.field private validSubscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->Companion:Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    if-eqz p3, :cond_0

    const-string v0, "KEY_TAX_CHARGE"

    .line 44
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    if-nez p3, :cond_1

    :cond_0
    new-instance p3, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-direct {p3}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;-><init>()V

    :cond_1
    iput-object p3, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "KEY_CTC"

    .line 46
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "KEY_CTC"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 52
    :cond_2
    iget-object p3, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->setTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;)V

    const-string p1, "view"

    .line 53
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 4

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 80
    sget-object v1, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object v3, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_ICON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arguments!!.getString(Ch\u2026DetailsActivity.KEY_ICON)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 65
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->validSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->unsubscribe(Lrx/Subscription;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 57
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getValidObservable()Lrx/Observable;

    move-result-object v0

    .line 59
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 60
    new-instance v1, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$onResume$1;-><init>(Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$onResume$2;->INSTANCE:Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$onResume$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_0

    new-instance v3, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_0
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->validSubscription:Lrx/Subscription;

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->updateNextButton()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_TAX_CHARGE"

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final updateNextButton()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    :cond_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public final updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 86
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    .line 87
    new-instance v0, Lru/rocketbank/core/events/NextButtonEvent;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->taxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->isValid()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f1100bd

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
