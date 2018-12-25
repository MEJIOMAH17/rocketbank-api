.class public Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "NewDepositsFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;,
        Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NewDeposits"


# instance fields
.field private appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private depositAPI:Lru/rocketbank/core/network/api/DepositApi;

.field private depositAdapter:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;

.field private depositSubscription:Lrx/Subscription;

.field private depositses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;",
            ">;"
        }
    .end annotation
.end field

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositses:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositAdapter:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 42
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->hideSpinner()V

    return-void
.end method

.method private refreshDeposits()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->showSpinner()V

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositAPI:Lru/rocketbank/core/network/api/DepositApi;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/DepositApi;->getDeposits()Lrx/Observable;

    move-result-object v0

    .line 165
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 166
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)V

    .line 167
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositSubscription:Lrx/Subscription;

    return-void
.end method

.method private setupToolbar()V
    .locals 5

    .line 226
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getStatusBarHeight()I

    move-result v0

    .line 228
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 229
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/support/design/widget/AppBarLayout;->setMinimumHeight(I)V

    .line 230
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f080143

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 231
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f110336

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 232
    new-instance v1, Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 233
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setBackgroundColor(I)V

    const v2, 0x7f110085

    .line 234
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setText(I)V

    .line 235
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060206

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v2, 0x7f090278

    .line 236
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setId(I)V

    .line 237
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const v4, 0x800005

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060228

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 239
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e5

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903d8

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f09005a

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const p2, 0x7f090324

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/TabLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 61
    new-instance p2, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 63
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 64
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p2, p0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 65
    new-instance p2, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;-><init>(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositAdapter:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;

    .line 66
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositAdapter:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 82
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 251
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110336

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    return-void
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 96
    sget-object v0, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;->Companion:Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment$Companion;->newInstance(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;)Lru/rocketbank/r2d2/fragments/deposit/OpenReplenishableDepositFragment;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 91
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->refreshDeposits()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDepositApi()Lru/rocketbank/core/network/api/DepositApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->depositAPI:Lru/rocketbank/core/network/api/DepositApi;

    .line 77
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->setupToolbar()V

    return-void
.end method
