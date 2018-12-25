.class public final Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;
.super Lru/rocketbank/r2d2/PresenterSecuredActivity;
.source "SPAddCardActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;
.implements Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/PresenterSecuredActivity<",
        "Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;",
        "Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;

.field private static final KEY_CARD_TOKEN:Ljava/lang/String; = "KEY_CARD_TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;-><init>()V

    .line 24
    new-instance v0, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    return-void
.end method

.method public static final startForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->Companion:Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity$Companion;->startForResult(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->createPresenter()Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;
    .locals 2

    .line 26
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "63d2a9f2-5200-11e8-9c2d-fa7ae01bbebc"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"63d2a9f\u2026-11e8-9c2d-fa7ae01bbebc\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    return-object v0
.end method

.method public final hideProgress()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->hideProgressDialog()V

    return-void
.end method

.method public final onCardAddClicked(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cardToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->keepUnlocked()V

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->addSpButton:Landroid/support/v7/widget/CardView;

    const-string v1, "binding.addSpButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 1014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->addCard(Ljava/lang/String;)V

    return-void
.end method

.method public final onCardAdded()V
    .locals 3

    const/4 v0, -0x1

    .line 67
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->setResult(I)V

    .line 68
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f110093

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0061

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026out.activity_sp_add_card)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->setData(Lru/rocketbank/r2d2/data/binding/ap/AddCardData;)V

    .line 33
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->data:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;->getCardToken()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_CARD_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->setResult(I)V

    return-void
.end method

.method public final onErrorAddCard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->addSpButton:Landroid/support/v7/widget/CardView;

    const-string v1, "binding.addSpButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    .line 62
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060254

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar;->setTextColor(I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 41
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStart()V

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->onStart(Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardView;)V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->hideProgress()V

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardPresenter;->onStop()V

    .line 50
    invoke-super {p0}, Lru/rocketbank/r2d2/PresenterSecuredActivity;->onStop()V

    return-void
.end method

.method public final onUserCancelled()V
    .locals 2

    const/high16 v0, 0x1040000

    .line 73
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(android.R.string.cancel)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->onErrorAddCard(Ljava/lang/String;)V

    return-void
.end method

.method public final showProgress()V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/devidepayment/sp/SPAddCardActivity;->showProgressDialog()V

    return-void
.end method
