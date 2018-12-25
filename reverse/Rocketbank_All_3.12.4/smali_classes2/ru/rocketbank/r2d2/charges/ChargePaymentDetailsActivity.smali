.class public final Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ChargePaymentDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChargePaymentDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargePaymentDetailsActivity.kt\nru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity\n*L\n1#1,146:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

.field private static final KEY_CHARGE:Ljava/lang/String; = "KEY_CHARGE"

.field private static final KEY_CHARGE_TYPE:Ljava/lang/String; = "KEY_CHARGE_TYPE"

.field private static final KEY_ICON:Ljava/lang/String; = "KEY_ICON"

.field private static final KEY_LOAD_ON_START:Ljava/lang/String; = "KEY_LOAD_ON_START"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private chargeType:Lru/rocketbank/core/model/charge/ChargeType;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKEY_CHARGE$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_CHARGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_CHARGE_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_CHARGE_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ICON$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_ICON:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_LOAD_ON_START$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_LOAD_ON_START:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onNextButtonClick(Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->onNextButtonClick()V

    return-void
.end method

.method private final onNextButtonClick()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.NextButtonListener"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/NextButtonListener;->onNextButtonClick()V

    return-void
.end method

.method private final replaceFragment(Lru/rocketbank/r2d2/fragments/RocketFragment;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 137
    check-cast p1, Landroid/support/v4/app/Fragment;

    const v1, 0x7f090105

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final createFragment()Lru/rocketbank/r2d2/fragments/RocketFragment;
    .locals 5

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    if-nez v0, :cond_0

    const-string v1, "chargeType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargesCheckFragment;-><init>()V

    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    goto :goto_0

    .line 125
    :pswitch_1
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargePaymentDetailsFragment;-><init>()V

    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    .line 129
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_ICON:Ljava/lang/String;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_ICON:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 69
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0033

    .line 70
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->setContentView(I)V

    .line 71
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled$1385ff()V

    :cond_1
    const v0, 0x7f1100b8

    .line 74
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->setTitle(I)V

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_CHARGE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.model.charge.ChargeType"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/model/charge/ChargeType;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    .line 76
    new-instance v0, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 77
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbarShadow:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "toolbarShadow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    const/16 v3, 0x15

    if-lt v1, v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    sget v0, Lru/rocketbank/r2d2/R$id;->imageViewIcon:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v4, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_ICON:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-static {v0, v1, v4}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 80
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewName:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    if-nez v1, :cond_6

    const-string v4, "chargeType"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeType;->getProviderName()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 81
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewDescription:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    if-nez p1, :cond_7

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->createFragment()Lru/rocketbank/r2d2/fragments/RocketFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->replaceFragment(Lru/rocketbank/r2d2/fragments/RocketFragment;)V

    .line 89
    :cond_7
    sget p1, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    const v0, 0x7f1100bd

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setText(I)V

    .line 90
    sget p1, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_9

    .line 92
    sget p1, Lru/rocketbank/r2d2/R$id;->imageViewIcon:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 93
    :cond_8
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewName:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setTransitionName(Ljava/lang/String;)V

    return-void

    :cond_9
    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/NextButtonEvent;)V
    .locals 3

    const-string v0, "nextButtonEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "btnNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    .line 114
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "btnNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 117
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 118
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "btnNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketButton;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected final onPause()V
    .locals 1

    .line 142
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 143
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method protected final onStart()V
    .locals 3

    .line 98
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->KEY_LOAD_ON_START:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->onNextButtonClick()V

    :cond_0
    return-void
.end method
