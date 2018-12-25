.class public abstract Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "MigrationFragment.java"


# instance fields
.field authorization:Lru/rocketbank/core/user/Authorization;

.field private migration:Lru/rocketbank/core/model/migration/Migration;

.field migrationApi:Lru/rocketbank/core/network/api/MigrationApi;

.field private migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

.field userApi:Lru/rocketbank/core/network/api/UserApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/migration/MigrationResponse;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->showSpinner()V

    .line 71
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 72
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;)V

    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;)V

    .line 73
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method protected final finishStep(Lru/rocketbank/core/model/migration/Migration;)V
    .locals 1

    .line 176
    sget-object v0, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    invoke-static {p1}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void
.end method

.method protected getMigration()Lru/rocketbank/core/model/migration/Migration;
    .locals 1

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->migration:Lru/rocketbank/core/model/migration/Migration;

    return-object v0
.end method

.method protected final getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;
    .locals 1

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->migrationApi:Lru/rocketbank/core/network/api/MigrationApi;

    return-object v0
.end method

.method public getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;
    .locals 1

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserApi()Lru/rocketbank/core/network/api/UserApi;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->userApi:Lru/rocketbank/core/network/api/UserApi;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getUserApi()Lru/rocketbank/core/network/api/UserApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->userApi:Lru/rocketbank/core/network/api/UserApi;

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->migrationApi:Lru/rocketbank/core/network/api/MigrationApi;

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_MIGRATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/migration/Migration;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->migration:Lru/rocketbank/core/model/migration/Migration;

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_MIGRATION_URLS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/migration/MigrationURLs;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

    return-void
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->hideSpinner()V

    .line 123
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    const v1, 0x7f11018d

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 126
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->showSnack(I)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->showSnack(Ljava/lang/String;)V

    return-void

    .line 138
    :cond_1
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->showSnack(I)V

    return-void
.end method

.method protected onRequestCompleted(Lru/rocketbank/core/model/migration/MigrationResponse;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->hideSpinner()V

    .line 93
    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/MigrationResponse;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v0

    if-nez v0, :cond_0

    const p1, 0x7f11012b

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->showSnack(I)V

    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/MigrationResponse;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    .line 100
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->updateMigration(Lru/rocketbank/core/model/migration/Migration;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected showSnack(I)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    return-void
.end method

.method protected showSnack(Ljava/lang/String;)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method protected updateMigration(Lru/rocketbank/core/model/migration/Migration;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/UserModel;->setMigration(Lru/rocketbank/core/model/migration/Migration;)V

    :cond_0
    return-void
.end method
