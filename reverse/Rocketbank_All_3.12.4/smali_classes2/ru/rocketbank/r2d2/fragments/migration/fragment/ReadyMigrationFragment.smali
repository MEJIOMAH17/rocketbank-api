.class public Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;
.source "ReadyMigrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$SubmitEvent;,
        Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;
    }
.end annotation


# static fields
.field private static final KEY_PLASTIC_CHECK_ID:Ljava/lang/String; = "KEY_PLASTIC_CHECK_ID"


# instance fields
.field private content:Landroid/view/ViewGroup;

.field private plasticCheckId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->plasticCheckId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->onGetProfileError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private onGetProfileError(Ljava/lang/Throwable;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->onError(Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/network/api/MigrationApi;->getJoining()Lrx/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

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

.method private showRetryErrorSnackbarMessage()V
    .locals 3

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->content:Landroid/view/ViewGroup;

    const v1, 0x7f11018d

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;)V

    const v2, 0x7f1103d3

    .line 176
    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e3

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/CheckCardEvent;)V
    .locals 3

    .line 147
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->showRetryErrorSnackbarMessage()V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/events/CheckCardEvent;->getPlasticsCheckResponse()Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    move-result-object p1

    .line 153
    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->content:Landroid/view/ViewGroup;

    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    .line 159
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

    .line 163
    :cond_2
    iget-object p1, p1, Lru/rocketbank/core/network/model/PlasticsCheckResponse;->plastic:Lru/rocketbank/core/model/PlasticModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/PlasticModel;->getValidation()Lru/rocketbank/core/model/ValidationModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/ValidationModel;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->plasticCheckId:Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getChangePin()Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ChangePin;->getPinText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ChangePin;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/CheckCardData;->getToken()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->plasticCheckId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/fragments/EnterPinFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/EnterPinFragment;

    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    return-void

    .line 160
    :cond_3
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->content:Landroid/view/ViewGroup;

    const v0, 0x7f11012b

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/PinActivationEvent;)V
    .locals 2

    .line 106
    sget-boolean p1, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Lru/rocketbank/core/model/migration/Migration;

    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->activated:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->showSpinner()V

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/network/api/UserApi;->getProfile()Lrx/Observable;

    move-result-object p1

    .line 113
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 114
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;)V

    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;)V

    .line 115
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$SubmitEvent;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/Migration;->getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->content:Landroid/view/ViewGroup;

    const-string v0, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0430\u043a\u0442\u0438\u0432\u0430\u0446\u0438\u0438 \u043a\u0430\u0440\u0442\u044b"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->newInstance(Lru/rocketbank/core/model/dto/CheckCardData;)Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_PLASTIC_CHECK_ID"

    .line 188
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->plasticCheckId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f090105

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->content:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    .line 62
    new-instance p1, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;-><init>()V

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 65
    sget-object p2, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    new-instance p2, Lru/rocketbank/core/model/migration/UpdateTitleEvent;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/core/model/migration/UpdateTitleEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void

    :cond_0
    const-string p1, "KEY_PLASTIC_CHECK_ID"

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->plasticCheckId:Ljava/lang/String;

    return-void
.end method
