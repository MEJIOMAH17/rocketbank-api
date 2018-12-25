.class public Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsPassportMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;
.source "NeedsPassportMigrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHintTopReadyTextRes()I
    .locals 1

    const v0, 0x7f1102cd

    return v0
.end method

.method protected getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 2

    .line 32
    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;-><init>()V

    const v1, 0x7f1102ce

    .line 33
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f0801eb

    .line 34
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102cc

    .line 35
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102cb

    .line 36
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    return-object v0
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

    .line 18
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_0

    .line 19
    new-instance p1, Lru/rocketbank/core/model/migration/Migration;

    sget-object v0, Lru/rocketbank/core/model/migration/Migration$Status;->needs_registration:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsPassportMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsPassportMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsPassportMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/core/network/api/MigrationApi;->uploadPassportMain(Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
