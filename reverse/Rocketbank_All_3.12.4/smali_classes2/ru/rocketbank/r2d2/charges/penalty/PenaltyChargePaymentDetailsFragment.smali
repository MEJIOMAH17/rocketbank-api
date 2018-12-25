.class public final Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "PenaltyChargePaymentDetailsFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPenaltyChargePaymentDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenaltyChargePaymentDetailsFragment.kt\nru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment\n*L\n1#1,149:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

.field private validSubscription:Lrx/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 37
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    return-void
.end method

.method public static final synthetic access$getPenaltyCharge$p(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;)Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;
    .locals 0

    .line 35
    iget-object p0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    return-object p0
.end method

.method public static final synthetic access$setPenaltyCharge$p(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 41
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 43
    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_CHARGE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    if-nez p3, :cond_1

    :cond_0
    new-instance p3, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-direct {p3}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;-><init>()V

    :cond_1
    iput-object p3, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    const-string p3, "view"

    .line 44
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lru/rocketbank/r2d2/R$id;->editTextCtc:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "dd SS dddddd"

    invoke-static {p3, v1}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 45
    sget p3, Lru/rocketbank/r2d2/R$id;->editTextDriverLicence:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "dd SS dddddd"

    invoke-static {p3, v1}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    const p3, 0x7f090370

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.SwitchCompat"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p3, Landroid/support/v7/widget/SwitchCompat;

    .line 48
    iget-object v1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getIKnowNum()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 49
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onCreateView$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object p3, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->setPenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V

    return-object p2
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 9

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getIKnowNum()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_1
    move-object v7, v2

    .line 78
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getIKnowNum()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v2

    .line 79
    :goto_1
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getIKnowNum()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v8, v2

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 81
    sget-object v3, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    const-string v0, "it"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_ICON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "arguments!!.getString(Ch\u2026DetailsActivity.KEY_ICON)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v3 .. v8}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 63
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->validSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->unsubscribe(Lrx/Subscription;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 55
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getValidObservable()Lrx/Observable;

    move-result-object v0

    .line 57
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 58
    new-instance v1, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$1;-><init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$2;->INSTANCE:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$onResume$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_0

    new-instance v3, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_0
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->validSubscription:Lrx/Subscription;

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->updateNextButton()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_CHARGE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final updateNextButton()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    :cond_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public final updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 87
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    .line 88
    new-instance v0, Lru/rocketbank/core/events/NextButtonEvent;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->penaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->isValid()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f1100bd

    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
