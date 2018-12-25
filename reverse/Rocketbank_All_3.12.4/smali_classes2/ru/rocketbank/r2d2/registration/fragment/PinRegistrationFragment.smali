.class public Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;
.super Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;
.source "PinRegistrationFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$SubmitEvent;,
        Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;
    }
.end annotation


# static fields
.field private static final KEY_PLASTIC_CHECK_ID:Ljava/lang/String; = "KEY_PLASTIC_CHECK_ID"


# instance fields
.field private plasticCheckId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010012

    const v2, 0x7f010013

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090105

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 4

    .line 54
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/BaseRocketApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11043b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e3

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/CheckCardEvent;)V
    .locals 3

    .line 94
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getException()Ljava/lang/Throwable;

    move-result-object p1

    const v1, 0x7f1103d3

    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;)V

    invoke-static {v0, p1, v1, v2}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;ILandroid/view/View$OnClickListener;)Lru/rocketbank/core/widgets/RocketSnackbar;

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getPlasticsCheckResponse()Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    move-result-object p1

    .line 106
    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 107
    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->showSnack(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_1
    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getPin()Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ChangePin;->getPinText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ChangePin;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/CheckCardData;->getToken()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    return-void

    :cond_3
    :goto_0
    const p1, 0x7f11012b

    .line 112
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->showSnack(I)V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/PinActivationEvent;)V
    .locals 2

    .line 84
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$SubmitEvent;)V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/StatusResponseData;->getPin()Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ChangePin;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->newInstance(Lru/rocketbank/core/model/dto/CheckCardData;)Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_is_activation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onNextButtonClick()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/NextButtonListener;->onNextButtonClick()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onRequestCompleted(Landroid/os/Parcelable;)V
    .locals 0

    .line 42
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->hideSpinner()V

    if-nez p1, :cond_0

    const p1, 0x7f11012b

    .line 220
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->showSnack(I)V

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    .line 225
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_PLASTIC_CHECK_ID"

    .line 126
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    .line 62
    new-instance p1, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;-><init>()V

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 65
    sget-object p2, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    new-instance p2, Lru/rocketbank/core/model/migration/UpdateTitleEvent;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/core/model/migration/UpdateTitleEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void

    :cond_0
    const-string p1, "KEY_PLASTIC_CHECK_ID"

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic updateModel(Landroid/os/Parcelable;)V
    .locals 0

    .line 42
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    return-void
.end method

.method public updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method
