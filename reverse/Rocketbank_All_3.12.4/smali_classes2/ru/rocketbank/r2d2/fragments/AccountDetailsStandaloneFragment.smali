.class public Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;
.super Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;
.source "AccountDetailsStandaloneFragment.java"


# instance fields
.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;
    .locals 1

    .line 19
    new-instance v0, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;
    .locals 3

    .line 23
    new-instance v0, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;-><init>()V

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TOKEN"

    .line 26
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0102

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->onViewInit(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0903d8

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f1103d1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 45
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 46
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
