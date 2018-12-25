.class public final Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ChangeCodewordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;

.field private static final KEY_CHANGE_CODEWORD:Ljava/lang/String; = "KEY_CHANGE_CODEWORD"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->Companion:Lru/rocketbank/r2d2/activities/ChangeCodewordActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKEY_CHANGE_CODEWORD$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->KEY_CHANGE_CODEWORD:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getChangeCodeWord()Lru/rocketbank/core/model/ChangeCodeWord;
    .locals 2

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    if-nez v0, :cond_0

    const-string v1, "changeCodeWord"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c002f

    .line 26
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->KEY_CHANGE_CODEWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "intent.getParcelableExtr\u2026ord>(KEY_CHANGE_CODEWORD)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/model/ChangeCodeWord;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    .line 29
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbarShadow:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "toolbarShadow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090105

    .line 34
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    if-nez v1, :cond_1

    const-string v2, "changeCodeWord"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/ChangeCodeWord;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object v1

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->newInstance(Lru/rocketbank/core/model/dto/CheckCardData;)Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/CheckCardEvent;)V
    .locals 4

    const-string v0, "checkCardEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    sget p1, Lru/rocketbank/r2d2/R$id;->content:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;)Lru/rocketbank/core/widgets/RocketSnackbar;

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getPlasticsCheckResponse()Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 54
    iget-object v1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    const-string v3, "plasticsCheckResponse!!.response"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_3

    .line 55
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    const-string v1, "plasticsCheckResponse.response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 59
    iget-object v1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_b

    if-eqz p1, :cond_5

    iget-object v1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_b

    if-eqz p1, :cond_6

    iget-object v1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 66
    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    const-string p1, ""

    .line 67
    :cond_9
    sget-object v1, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->Companion:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    if-nez v2, :cond_a

    const-string v3, "changeCodeWord"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1, v2, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;->newInstance(Lru/rocketbank/core/model/ChangeCodeWord;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090105

    .line 72
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/16 v0, 0x1001

    .line 73
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    .line 60
    :cond_b
    :goto_4
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f11012b

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/NextButtonEvent;)V
    .locals 3

    const-string v0, "nextButtonEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 90
    :cond_0
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "btnNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setEnabled(Z)V

    .line 91
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "btnNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 94
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    sget v0, Lru/rocketbank/r2d2/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->_$_findCachedViewById(I)Landroid/view/View;

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

    .line 78
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 79
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method public final setChangeCodeWord(Lru/rocketbank/core/model/ChangeCodeWord;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ChangeCodewordActivity;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    return-void
.end method
