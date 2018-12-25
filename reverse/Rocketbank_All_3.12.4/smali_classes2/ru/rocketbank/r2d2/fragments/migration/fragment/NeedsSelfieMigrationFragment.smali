.class public Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;
.source "NeedsSelfieMigrationFragment.java"


# instance fields
.field authorization:Lru/rocketbank/core/user/Authorization;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCameraIntent()Landroid/content/Intent;
    .locals 3

    .line 39
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHintTopReadyTextRes()I
    .locals 1

    const v0, 0x7f1102d4

    return v0
.end method

.method protected getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 3

    const-string v0, "male"

    .line 50
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;-><init>()V

    const v2, 0x7f1102d5

    .line 52
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v1

    if-eqz v0, :cond_0

    const v0, 0x7f080228

    goto :goto_0

    :cond_0
    const v0, 0x7f080227

    .line 53
    :goto_0
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102d3

    .line 54
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102d2

    .line 55
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method protected sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/migration/MigrationResponse;",
            ">;"
        }
    .end annotation

    .line 30
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_0

    .line 31
    new-instance p1, Lru/rocketbank/core/model/migration/Migration;

    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->checking:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    const/4 p1, 0x0

    .line 32
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/core/network/api/MigrationApi;->uploadSelfie(Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
