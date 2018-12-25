.class public Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;
.source "PassportRegRegistrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFormContent()Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 2

    .line 61
    new-instance v0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;-><init>()V

    const v1, 0x7f1102d0

    .line 62
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102cf

    .line 63
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    const v1, 0x7f1102cb

    .line 64
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;

    move-result-object v0

    return-object v0
.end method

.method protected getHintTopReadyTextRes()I
    .locals 1

    const v0, 0x7f1102d1

    return v0
.end method

.method protected getImageRes()I
    .locals 1

    const v0, 0x7f0801e9

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .line 56
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/BaseRocketApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v1, 0x7f11043b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/registration/RegistrationStep;

    .line 22
    sget-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->FILL_FORM:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    .line 23
    sget-boolean v1, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;->getApi()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/api/RegistrationApi;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lru/rocketbank/core/network/api/RegistrationApi;->uploadImage(Lokhttp3/MultipartBody$Part;Z)Lrx/Observable;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$3;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$3;-><init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    .line 28
    invoke-virtual {p1, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$2;-><init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;)V

    .line 34
    invoke-virtual {p1, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$1;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PassportRegRegistrationFragment;Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    .line 41
    invoke-virtual {p1, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
