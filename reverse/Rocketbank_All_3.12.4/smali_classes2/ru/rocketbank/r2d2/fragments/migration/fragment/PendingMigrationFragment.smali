.class public Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;
.source "PendingMigrationFragment.java"


# instance fields
.field authorization:Lru/rocketbank/core/user/Authorization;

.field textViewCardHolderName:Landroid/widget/TextView;

.field textViewHintBottom:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 101
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const v1, 0x7f1102ac

    invoke-virtual {v0, v1}, Lru/rocketbank/core/BaseRocketApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBottomButtonClick()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e2

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStartButtonClick()V
    .locals 3

    .line 87
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lru/rocketbank/core/model/migration/Migration;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->needs_passport:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/MigrationApi;->joining(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090394

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->textViewCardHolderName:Landroid/widget/TextView;

    const p2, 0x7f0903a1

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    const p2, 0x7f09008c

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09008e

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 59
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 61
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->textViewCardHolderName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getNameInLatin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, ""

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/core/model/migration/MigrationURLs;->getCompareTariffUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "<a href="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/core/model/migration/MigrationURLs;->getCompareTariffUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">\u0421\u0440\u0430\u0432\u043d\u0438\u0442\u044c \u0441\u0442\u0430\u0440\u044b\u0439 \u0438 \u043d\u043e\u0432\u044b\u0439 \u0442\u0430\u0440\u0438\u0444\u044b</a><br/>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, ""

    .line 73
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/migration/MigrationURLs;->getFaqUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ",<br/>"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v0, 0x7f1102d9

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <a href="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/migration/MigrationURLs;->getFaqUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">FAQ</a><br/>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    const-string v0, ""

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/MigrationURLs;->getRulesUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<br/><a href="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/MigrationURLs;->getRulesUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\u041f\u0440\u0430\u0432\u0438\u043b\u0430 \u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f \u0443\u0441\u043b\u0443\u0433</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1102d8

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06022c

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method
