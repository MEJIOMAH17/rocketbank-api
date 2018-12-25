.class public final Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;
.super Lru/rocketbank/r2d2/charges/ChargeInfoActivity;
.source "TaxChargeInfoActivity.kt"


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

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 16
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0065

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026yout.activity_tax_charge)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    .line 18
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 20
    :cond_0
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const v1, 0x7f110368

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setText(I)V

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;->getKEY_CHARGE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lru/rocketbank/core/model/charge/ChargeModel;

    const v0, 0x7f11045d

    .line 22
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->setTitle(I)V

    .line 23
    invoke-virtual {p1, v3}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->setChargeModel(Lru/rocketbank/core/model/charge/ChargeModel;)V

    .line 24
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewSum:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "textViewSum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-string v0, "chargeModel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createChargeSumText$default(Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeModel;ILjava/lang/Integer;ILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
