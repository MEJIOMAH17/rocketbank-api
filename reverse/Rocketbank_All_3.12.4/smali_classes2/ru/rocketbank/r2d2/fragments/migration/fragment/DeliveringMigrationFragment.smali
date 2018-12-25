.class public Lru/rocketbank/r2d2/fragments/migration/fragment/DeliveringMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.source "DeliveringMigrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 3

    .line 13
    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;-><init>()V

    const v1, 0x7f1102c3

    .line 14
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f08022a

    .line 15
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/DeliveringMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/Migration;->getStatus()Lru/rocketbank/core/model/migration/Migration$Status;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/model/migration/Migration$Status;->dhl_delivering:Lru/rocketbank/core/model/migration/Migration$Status;

    if-ne v1, v2, :cond_0

    const v1, 0x7f1102c5

    goto :goto_0

    :cond_0
    const v1, 0x7f1102c2

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102c1

    .line 19
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/DeliveringMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/Migration;->getStatus()Lru/rocketbank/core/model/migration/Migration$Status;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/model/migration/Migration$Status;->dhl_delivering:Lru/rocketbank/core/model/migration/Migration$Status;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonVisible(Z)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    return-object v0
.end method

.method protected onButtonBottomClicked()V
    .locals 0

    return-void
.end method

.method protected onButtonClicked()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/DeliveringMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v0

    .line 34
    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->ready:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/migration/Migration;->setStatus(Lru/rocketbank/core/model/migration/Migration$Status;)V

    .line 35
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/DeliveringMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void
.end method

.method public onNextButtonClick()V
    .locals 0

    return-void
.end method
