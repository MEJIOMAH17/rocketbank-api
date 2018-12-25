.class public Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;
.super Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;
.source "PasswordRegistrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment$SubmitEvent;
    }
.end annotation


# static fields
.field private static final KEY_PLASTIC_CHECK_ID:Ljava/lang/String; = "KEY_PLASTIC_CHECK_ID"


# instance fields
.field content:Landroid/view/ViewGroup;

.field private plasticCheckId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010012

    const v2, 0x7f010013

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090105

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 4

    .line 109
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

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/PinActivationEvent;)V
    .locals 2

    .line 74
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onRequestCompleted(Landroid/os/Parcelable;)V
    .locals 0

    .line 24
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->hideSpinner()V

    if-nez p1, :cond_0

    const p1, 0x7f11012b

    .line 91
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->showSnack(I)V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_PLASTIC_CHECK_ID"

    .line 80
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 61
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onStart()V

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0903da

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f090105

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->content:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    .line 42
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    .line 43
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/core/model/StatusResponseData;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lru/rocketbank/r2d2/registration/EnterPasswordFragment;->newInstance()Lru/rocketbank/r2d2/registration/EnterPasswordFragment;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    return-void

    :cond_0
    const-string p1, "KEY_PLASTIC_CHECK_ID"

    .line 48
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->plasticCheckId:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic updateModel(Landroid/os/Parcelable;)V
    .locals 0

    .line 24
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PasswordRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    return-void
.end method
