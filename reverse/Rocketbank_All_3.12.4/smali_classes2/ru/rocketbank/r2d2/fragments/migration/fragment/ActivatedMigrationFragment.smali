.class public Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.source "ActivatedMigrationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 2

    .line 20
    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;-><init>()V

    const v1, 0x7f1102b2

    .line 21
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f0801fa

    .line 22
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102b1

    .line 23
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102ae

    .line 24
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 54
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const v1, 0x7f1102ad

    invoke-virtual {v0, v1}, Lru/rocketbank/core/BaseRocketApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onButtonClicked()V
    .locals 3

    .line 45
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lru/rocketbank/core/model/migration/Migration;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->completed:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/MigrationApi;->transferMoney(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 29
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/Migration;->getTransfer()Lru/rocketbank/core/model/migration/Migration$Transfer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/Migration$Transfer;->getSlowMoney()F

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 33
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    const v2, 0x7f1102b0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/Migration$Transfer;->getQuick()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/Migration$Transfer;->getSlowMoney()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {p0, v2, v3}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 35
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->button:Landroid/widget/Button;

    const v2, 0x7f1102af

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/Migration$Transfer;->getQuick()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
