.class public Lru/rocketbank/r2d2/fragments/migration/fragment/CheckingMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.source "CheckingMigrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 2

    .line 15
    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;-><init>()V

    const v1, 0x7f1102bc

    .line 16
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f0800c3

    .line 17
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102bb

    .line 18
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonVisible(Z)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    return-object v0
.end method

.method protected onButtonBottomClicked()V
    .locals 0

    return-void
.end method

.method protected onButtonClicked()V
    .locals 3

    .line 37
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lru/rocketbank/core/model/migration/Migration;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->issuing:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CheckingMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CheckingMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void

    :cond_0
    return-void
.end method

.method public onStartButtonClick()V
    .locals 3

    .line 24
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lru/rocketbank/core/model/migration/Migration;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->issuing:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CheckingMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CheckingMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void

    :cond_0
    return-void
.end method
