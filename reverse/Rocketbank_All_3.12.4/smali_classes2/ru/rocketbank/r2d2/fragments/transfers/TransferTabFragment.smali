.class public Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "TransferTabFragment.java"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;
    }
.end annotation


# static fields
.field static final IS_EMPTY:Ljava/lang/String; = "is_empty"

.field private static final KEY_BUDGET:Ljava/lang/String; = "KEY_BUDGET"

.field private static final KEY_FIZ:Ljava/lang/String; = "KEY_FIZ"

.field private static final KEY_UR:Ljava/lang/String; = "KEY_UR"

.field private static final TAG:Ljava/lang/String; = "TransferTabFragment"


# instance fields
.field private binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

.field private btnNext:Landroid/widget/Button;

.field private currentFragment:Landroid/support/v4/app/Fragment;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field templateManager:Lru/rocketbank/core/manager/TemplateManager;

.field private templatesGetSubscription:Lrx/Subscription;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field private transferAdapter:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;

.field private transfersToBudget:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field private transfersToFiz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field private transfersToUr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTemplateManager()Lru/rocketbank/core/manager/TemplateManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    .line 58
    new-instance v0, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-void
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$202(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToUr:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$302(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToFiz:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToBudget:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->updateUi()V

    return-void
.end method

.method private load()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->showSpinner()V

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/TemplateManager;->getTemplates()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V

    .line 217
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->templatesGetSubscription:Lrx/Subscription;

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->templateManager:Lru/rocketbank/core/manager/TemplateManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/TemplateManager;->refreshTemplates()V

    return-void
.end method

.method private updateUi()V
    .locals 6

    .line 252
    invoke-static {}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->newInstance()Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToFiz:Ljava/util/ArrayList;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToUr:Ljava/util/ArrayList;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToBudget:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;

    move-result-object v1

    .line 254
    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/support/v4/app/Fragment;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {v2, p0, v3, v4}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Landroid/support/v4/app/FragmentManager;[Landroid/support/v4/app/Fragment;)V

    iput-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transferAdapter:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transferAdapter:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 273
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 274
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 279
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public nextPressed(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    check-cast p1, Lru/rocketbank/r2d2/fragments/TabFragmentListener;

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/TabFragmentListener;->onNextButtonClick()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    return v0

    .line 248
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 68
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    .line 69
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->pager:Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 71
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeTab:Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;->tabLayout:Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 72
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->btnNext:Landroid/widget/Button;

    .line 74
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 75
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->toolbarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object p1

    const p2, 0x7f1102a3

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 78
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getStatusBarHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 79
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 80
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060254

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 82
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/NextButtonEvent;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getVisibility()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->hideSpinner()V

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->templatesGetSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->unsubscribe(Lrx/Subscription;)V

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 110
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->binding:Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_UR"

    .line 135
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToUr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "KEY_FIZ"

    .line 136
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToFiz:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "KEY_BUDGET"

    .line 137
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToBudget:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transferAdapter:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transferAdapter:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 91
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 95
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->load()V

    return-void

    :cond_1
    const-string p1, "KEY_UR"

    .line 97
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToUr:Ljava/util/ArrayList;

    const-string p1, "KEY_FIZ"

    .line 98
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToFiz:Ljava/util/ArrayList;

    const-string p1, "KEY_BUDGET"

    .line 99
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->transfersToBudget:Ljava/util/ArrayList;

    .line 100
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->updateUi()V

    return-void
.end method
