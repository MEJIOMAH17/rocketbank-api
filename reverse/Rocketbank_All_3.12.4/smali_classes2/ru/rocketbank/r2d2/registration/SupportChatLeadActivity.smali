.class public Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "SupportChatLeadActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 50
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 28
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 32
    :cond_1
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0063

    .line 33
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    if-nez p1, :cond_3

    .line 39
    new-instance p1, Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;-><init>()V

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/SupportChatLeadActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090103

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    return-void
.end method
