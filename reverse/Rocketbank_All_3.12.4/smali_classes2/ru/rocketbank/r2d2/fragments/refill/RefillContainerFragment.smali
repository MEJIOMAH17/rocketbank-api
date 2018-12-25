.class public Lru/rocketbank/r2d2/fragments/refill/RefillContainerFragment;
.super Lru/rocketbank/r2d2/fragments/ContainerFragment;
.source "RefillContainerFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u041f\u043e\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u0435"

    return-object v0
.end method

.method protected getContainerId()I
    .locals 1

    const v0, 0x7f0902d0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0c00f2

    return v0
.end method

.method protected getStartupFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 24
    new-instance v0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;-><init>()V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/refill/RefillContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
