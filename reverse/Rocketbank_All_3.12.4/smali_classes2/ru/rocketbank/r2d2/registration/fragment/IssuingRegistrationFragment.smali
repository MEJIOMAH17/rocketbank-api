.class public Lru/rocketbank/r2d2/registration/fragment/IssuingRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;
.source "IssuingRegistrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 2

    .line 16
    new-instance v0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;-><init>()V

    const v1, 0x7f1102c7

    .line 17
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f0801fa

    .line 18
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setImageRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102c6

    .line 19
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .line 26
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/BaseRocketApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11043b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBottomButtonClicked()V
    .locals 0

    return-void
.end method

.method protected onButtonClicked()V
    .locals 2

    .line 34
    new-instance v0, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/RegistrationStep;-><init>()V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/IssuingRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStatusResponseData(Lru/rocketbank/core/model/StatusResponseData;)V

    .line 36
    sget-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DELIVERING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    .line 37
    sget-boolean v1, Lru/rocketbank/r2d2/registration/RegistrationActivity;->DEMO:Z

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/IssuingRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/IssuingRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    return-void
.end method
