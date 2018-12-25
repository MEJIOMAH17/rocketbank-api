.class public Lru/rocketbank/r2d2/fragments/transfers/CardTransfersContainerFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "CardTransfersContainerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0105

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_0

    .line 17
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-direct {p2}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;-><init>()V

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CardTransfersContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CardTransfersContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p3

    const v0, 0x7f090401

    .line 20
    invoke-virtual {p3, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 21
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-object p1
.end method
