.class public abstract Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;
.super Lru/rocketbank/r2d2/fragments/PresenterFragment;
.source "NewPassportFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;
.implements Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/fragments/PresenterFragment<",
        "Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;",
        ">;",
        "Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;",
        "Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;"
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field protected binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

.field private final data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;-><init>()V

    .line 26
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public bottomButtonClicked(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$DefaultImpls;->bottomButtonClicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;)V

    return-void
.end method

.method public changeButtonsEnabled(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getButtonsEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->createPresenter()Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public createPresenter()Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;
    .locals 2

    .line 28
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "0e74114d-d970-41bc-8eab-055e33accfba"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"0e74114\u2026-41bc-8eab-055e33accfba\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-class v1, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    .line 28
    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    return-object v0
.end method

.method protected final getBinding()Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
    .locals 2

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected getBottomButtonText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getData()Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    return-object v0
.end method

.method protected getHelpText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getMainButtonText()Ljava/lang/String;
.end method

.method protected getStepImgRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getStepTitle()Ljava/lang/String;
.end method

.method public hideProgress()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->hideSpinner()V

    return-void
.end method

.method protected init()V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getStepImgRes()I

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getImage()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->imageView3:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const v2, 0x7f060200

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setColorFilter(I)V

    .line 70
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    if-nez v0, :cond_4

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->button:Lru/rocketbank/core/widgets/RocketButton;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getHelpText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getHelpText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getPhotoTitle()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getStepTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getMainButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getMainButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;->getBottomButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getBottomButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public mainClicked(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$DefaultImpls;->mainClicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;)V

    return-void
.end method

.method public nextStep(I)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 102
    instance-of v1, v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 104
    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->nextStep$App_prodRelease(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 41
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    move-result-object p1

    const-string p2, "FragmentNewPassportStepB\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->data:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->setData(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepData;)V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->init()V

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->onAttach(Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepView;)V

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    if-nez p1, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->onDetach()V

    .line 60
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onDestroyView()V

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onReady()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 91
    instance-of v1, v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->setResultAndClose$App_prodRelease()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 49
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onStart()V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->setListener(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;->setListener(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)V

    .line 55
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/PresenterFragment;->onStop()V

    return-void
.end method

.method protected final setBinding(Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->makeSnack(Landroid/view/View;Ljava/lang/String;)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketSnackbar;->show()V

    return-void
.end method

.method public showProgress()V
    .locals 1

    const v0, 0x7f110284

    .line 82
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->showSpinner(I)V

    return-void
.end method
