.class public Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;
.source "PassportRegistrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 2

    .line 62
    new-instance v0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;-><init>()V

    const v1, 0x7f1102ce

    .line 63
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102cc

    .line 64
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102cb

    .line 65
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    return-object v0
.end method

.method protected getHintTopReadyTextRes()I
    .locals 1

    const v0, 0x7f1102cd

    return v0
.end method

.method protected getImageRes()I
    .locals 1

    const v0, 0x7f0801e8

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f"

    return-object v0
.end method

.method protected sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/r2d2/registration/RegistrationStep;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/RegistrationStep;

    .line 23
    sget-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->NEEDS_REGISTRATION:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    .line 24
    sget-boolean v1, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;->getApi()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/api/RegistrationApi;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lru/rocketbank/core/network/api/RegistrationApi;->uploadImage(Lokhttp3/MultipartBody$Part;Z)Lrx/Observable;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$3;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$3;-><init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    .line 29
    invoke-virtual {p1, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$2;-><init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;)V

    .line 35
    invoke-virtual {p1, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$1;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegistrationFragment;Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    .line 42
    invoke-virtual {p1, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
