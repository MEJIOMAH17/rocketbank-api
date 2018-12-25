.class public Lru/rocketbank/r2d2/friends/FriendActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "FriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;,
        Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT:Ljava/lang/String; = "KEY_CONTACT"

.field private static final KEY_CURRENT_POSITION:Ljava/lang/String; = "KEY_CURRENT_POSITION"


# instance fields
.field btnNext:Landroid/widget/Button;

.field private contact:Lru/rocketbank/core/model/contact/Contact;

.field private currentPosition:I

.field private pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

.field private refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

.field tabLayout:Landroid/support/design/widget/TabLayout;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field private transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/FriendActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    return p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/friends/FriendActivity;I)I
    .locals 0

    .line 26
    iput p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    return p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/friends/FriendActivity;)Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    return-object p0
.end method

.method private scheduleStartPostponedTransition(Landroid/view/View;)V
    .locals 2

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendActivity$3;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity$3;-><init>(Lru/rocketbank/r2d2/friends/FriendActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setEnabledButtonNext(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0, v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->startActivity(Landroid/content/Context;Lru/rocketbank/core/model/contact/Contact;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lru/rocketbank/core/model/contact/Contact;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_CONTACT"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_3

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_2

    .line 49
    invoke-virtual {p0, v0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u041e\u043f\u0430, \u0447\u0443\u0434\u0435\u0441\u0430 \u0441\u043b\u0443\u0447\u0430\u044e\u0442\u0441\u044f!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 46
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 66
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c003f

    .line 67
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->setContentView(I)V

    const v0, 0x7f0903d8

    .line 69
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090372

    .line 70
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f090103

    .line 71
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f09008a

    .line 72
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->postponeEnterTransition()V

    .line 81
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "KEY_CONTACT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/contact/Contact;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->contact:Lru/rocketbank/core/model/contact/Contact;

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f1101f2

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f1101f1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    if-nez p1, :cond_2

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;->newInstance(Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    .line 88
    sget-object p1, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->Companion:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;->newInstance(Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    .line 89
    iput v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v3, Lru/rocketbank/r2d2/friends/RefillRequestAmountFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v3, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    const-string v0, "KEY_CURRENT_POSITION"

    .line 93
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    .line 96
    :goto_0
    new-instance p1, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    iget-object v4, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    aput-object v4, v3, v2

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    aput-object v2, v3, v1

    invoke-direct {p1, v0, v3}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    .line 97
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lru/rocketbank/r2d2/friends/FriendActivity$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/FriendActivity$1;-><init>(Lru/rocketbank/r2d2/friends/FriendActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 121
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v0, v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 122
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v0, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/rocketbank/r2d2/friends/FriendActivity$OnTabSelectedListener;-><init>(Lru/rocketbank/r2d2/friends/FriendActivity;Lru/rocketbank/r2d2/friends/FriendActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 123
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getNextButtonText()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 128
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 134
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    new-instance v0, Lru/rocketbank/r2d2/friends/FriendActivity$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/FriendActivity$2;-><init>(Lru/rocketbank/r2d2/friends/FriendActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/NextButtonEvent;)V
    .locals 3

    .line 170
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    iget v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->isEnable()Z

    move-result p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity;->setEnabledButtonNext(Z)V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;)V
    .locals 5

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    iget v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->setTransitionNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onTextChanged()V

    .line 166
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->getAvatar()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity;->scheduleStartPostponedTransition(Landroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 230
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 238
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "input_method"

    .line 233
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 235
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->supportFinishAfterTransition()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->pagerAdapter:Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/FriendActivity$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 196
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->refillRequestAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->transfersFriendAmountFragment:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_1
    const-string v0, "KEY_CURRENT_POSITION"

    .line 205
    iget v1, p0, Lru/rocketbank/r2d2/friends/FriendActivity;->currentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
