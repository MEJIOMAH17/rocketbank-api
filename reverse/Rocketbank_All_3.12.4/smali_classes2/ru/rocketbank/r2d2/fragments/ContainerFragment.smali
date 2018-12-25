.class public abstract Lru/rocketbank/r2d2/fragments/ContainerFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContainerFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/ActionBarTitleInstaller;
.implements Lru/rocketbank/r2d2/IHostFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public canBack()Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canShowMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionBarTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getContainerId()I
.end method

.method protected abstract getLayoutId()I
.end method

.method protected abstract getStartupFragment()Landroid/support/v4/app/Fragment;
.end method

.method protected getStatusBarHeight()I
    .locals 4

    .line 90
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getToolbarId()I
    .locals 1

    const v0, 0x7f0903d8

    return v0
.end method

.method public moveBack()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onToolbarSet(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->showStartupFragment()V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getToolbarId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getStatusBarHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V

    .line 58
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->onToolbarSet(Landroid/support/v7/widget/Toolbar;)V

    :cond_1
    return-void
.end method

.method protected setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 77
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method protected setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V
    .locals 2

    .line 82
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 83
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showStartupFragment()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getContainerId()I

    move-result v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/ContainerFragment;->getStartupFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
