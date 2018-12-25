.class public Lru/rocketbank/r2d2/friends/RefillRequestActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "RefillRequestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static start(Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;Landroid/content/Context;)V
    .locals 3

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/friends/RefillRequestActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "amount"

    .line 19
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 25
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0053

    .line 26
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->setContentView(I)V

    const p1, 0x7f0903d8

    .line 27
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f1103ba

    .line 29
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 30
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled$1385ff()V

    .line 37
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "data"

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "amount"

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "amount"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 41
    new-instance v0, Lru/rocketbank/r2d2/friends/RefillRequestUrlsFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/friends/RefillRequestUrlsFragment;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/RefillRequestUrlsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/RefillRequestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f090105

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
