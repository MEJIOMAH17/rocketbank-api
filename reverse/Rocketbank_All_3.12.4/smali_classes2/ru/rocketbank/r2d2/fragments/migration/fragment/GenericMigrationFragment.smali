.class public abstract Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;
.source "GenericMigrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    }
.end annotation


# instance fields
.field protected button:Landroid/widget/Button;

.field protected buttonBottom:Landroid/widget/Button;

.field protected image:Landroid/widget/ImageView;

.field protected textViewHintBottom:Landroid/widget/TextView;

.field protected textViewHintTop:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
.end method

.method protected initView()V
    .locals 5

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->textViewHintTop:Landroid/widget/TextView;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->getTopHintTextRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->getImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->getBottomHintTextRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->isButtonVisible()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->button:Landroid/widget/Button;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->getButtonTextRes()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->button:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    :goto_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->isBottomButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->getButtonBottomTextRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    :goto_1
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onButtonBottomClicked()V
    .locals 0

    return-void
.end method

.method protected onButtonClicked()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->initView()V

    const p2, 0x7f0903a2

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->textViewHintTop:Landroid/widget/TextView;

    const p2, 0x7f0901c7

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->image:Landroid/widget/ImageView;

    const p2, 0x7f0903a1

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    const p2, 0x7f09008c

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->button:Landroid/widget/Button;

    const p2, 0x7f09008e

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->buttonBottom:Landroid/widget/Button;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->button:Landroid/widget/Button;

    new-instance p2, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->buttonBottom:Landroid/widget/Button;

    new-instance p2, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
