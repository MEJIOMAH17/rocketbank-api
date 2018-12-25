.class public final Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;
.super Lru/rocketbank/r2d2/charges/ChargeInfoActivity;
.source "PenaltyChargeInfoActivity.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 16
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c004c

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026.activity_penalty_charge)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    .line 18
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;->getKEY_CHARGE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/charge/ChargeModel;

    const v2, 0x7f110371

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getUin()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->setChargeModel(Lru/rocketbank/core/model/charge/ChargeModel;)V

    .line 23
    new-instance p1, Landroid/text/SpannableStringBuilder;

    const v1, 0x7f110377

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, " "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 24
    sget v1, Lru/rocketbank/r2d2/R$id;->textViewFineSum:I

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "textViewFineSum"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const-string v4, "chargeModel"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f060047

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v0, v4, v5}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createChargeSumText(Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeModel;ILjava/lang/Integer;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
