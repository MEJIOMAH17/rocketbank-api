.class public Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.source "IssuingMigrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 2

    .line 14
    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;-><init>()V

    const v1, 0x7f1102c7

    .line 15
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f0801fa

    .line 16
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102c6

    .line 17
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonVisible(Z)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    return-object v0
.end method

.method protected onButtonBottomClicked()V
    .locals 0

    return-void
.end method

.method protected onButtonClicked()V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;->onStartButtonClick()V

    return-void
.end method

.method public onStartButtonClick()V
    .locals 3

    .line 23
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lru/rocketbank/core/model/migration/Migration;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->card_ready:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void

    .line 27
    :cond_0
    new-instance v0, Lru/rocketbank/core/model/migration/Migration;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->card_ready:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void
.end method
