.class public final Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "CvvEnterActivity.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/listener/CardNumberListener;
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;
    }
.end annotation


# static fields
.field private static final CARD_EXTRA:Ljava/lang/String; = "CARD_EXTRA"

.field public static final Companion:Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activityBinidng:Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

.field private cardModel:Lru/rocketbank/core/model/CardModel;

.field private cvv:Ljava/lang/String;

.field private toolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->cvv:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCARD_EXTRA$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->CARD_EXTRA:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 82
    iput-object p3, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->cvv:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->toolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez p1, :cond_0

    const-string p2, "toolbarBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
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

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->toolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v0, :cond_0

    const-string v1, "toolbarBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
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
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lru/rocketbank/core/model/CardData;

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->cvv:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lru/rocketbank/core/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 52
    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity;->Companion:Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-nez v2, :cond_0

    const-string v3, "cardModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, p1, v2}, Lru/rocketbank/r2d2/activities/c2c/CardRefillAmountActivity$Companion;->newInstance(Landroid/content/Context;Lru/rocketbank/core/model/CardData;Lru/rocketbank/core/model/CardModel;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 28
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance p1, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const v0, 0x7f1101db

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f110315

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->toolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 32
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c003c

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026ayout.activity_enter_cvv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->activityBinidng:Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

    .line 33
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->activityBinidng:Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

    if-nez p1, :cond_0

    const-string v0, "activityBinidng"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 34
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->activityBinidng:Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

    if-nez p1, :cond_1

    const-string v0, "activityBinidng"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->toolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v0, :cond_2

    const-string v1, "toolbarBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 36
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->activityBinidng:Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

    if-nez p1, :cond_3

    const-string v0, "activityBinidng"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "activityBinidng.toolbarBlock!!.toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    :cond_5
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->CARD_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "intent.getParcelableExtra(CARD_EXTRA)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/CardModel;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->activityBinidng:Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

    if-nez p1, :cond_6

    const-string v0, "activityBinidng"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    const-string v0, "activityBinidng.creditCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/CvvEnterActivity;->cardModel:Lru/rocketbank/core/model/CardModel;

    if-nez v0, :cond_7

    const-string v1, "cardModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/core/model/CardModel;->getPan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumber(Ljava/lang/String;)V

    .line 45
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/widgets/listener/CardNumberListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/CreditCardView;->setCardNumberListener(Lru/rocketbank/core/widgets/listener/CardNumberListener;)V

    return-void
.end method
