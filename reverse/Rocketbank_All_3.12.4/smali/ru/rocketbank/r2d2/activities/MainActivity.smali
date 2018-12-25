.class public Lru/rocketbank/r2d2/activities/MainActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "MainActivity.java"

# interfaces
.implements Lru/rocketbank/r2d2/activities/DrawerContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static final KEY_ACTION_IS_COMPLETED:Ljava/lang/String; = "KEY_ACTION_IS_COMPLETED"

.field private static final KEY_DRAWER_SCROLL_POSITION:Ljava/lang/String; = "KEY_DRAWER_SCROLL_POSITION"

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static final TAG_FRAGMENT:Ljava/lang/String; = "TAG_FRAGMENT"

.field private static final TOUCH_REQUEST:I = 0x10

.field private static isShowNotification:Z = false

.field private static final problemModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeFragment:Landroid/support/v4/app/Fragment;

.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

.field atmsManager:Lru/rocketbank/core/manager/AtmsManager;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field private bottomItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private checkGooglePlayServicesRunnagle:Ljava/lang/Runnable;

.field contactManager:Lru/rocketbank/core/manager/ContactManager;

.field currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field dataManager:Lru/rocketbank/core/manager/DataManager;

.field private drawer:Lcom/mikepenz/materialdrawer/Drawer;

.field private drawerSavedState:Landroid/os/Parcelable;

.field private drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private feedItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

.field private fixView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private headerView:Landroid/view/View;

.field private headerViewHolder:Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

.field private isActionCompleted:Z

.field private mUserModelSubscription:Lrx/Subscription;

.field private moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private requirePermissionsRunnable:Ljava/lang/Runnable;

.field rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

.field private saveInstanceState:Z

.field private sendGaTokenRunnable:Ljava/lang/Runnable;

.field private sendToken:Z

.field private shopItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

.field private showJointRequestRunnable:Ljava/lang/Runnable;

.field private staticContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    sput-object v0, Lru/rocketbank/r2d2/activities/MainActivity;->problemModels:Ljava/util/ArrayList;

    const-string v1, "SM-G950"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity;->problemModels:Ljava/util/ArrayList;

    const-string v1, "SM-G955"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity;->problemModels:Ljava/util/ArrayList;

    const-string v1, "SM-G960"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity;->problemModels:Ljava/util/ArrayList;

    const-string v1, "SM-G965"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerSavedState:Landroid/os/Parcelable;

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->sendToken:Z

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    .line 156
    new-instance v1, Lru/rocketbank/r2d2/activities/MainActivity$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/MainActivity$1;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->showJointRequestRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v1, Lru/rocketbank/r2d2/activities/MainActivity$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/MainActivity$2;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->requirePermissionsRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v1, Lru/rocketbank/r2d2/activities/MainActivity$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/MainActivity$3;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->checkGooglePlayServicesRunnagle:Ljava/lang/Runnable;

    .line 177
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->isActionCompleted:Z

    .line 273
    new-instance v0, Lru/rocketbank/r2d2/activities/MainActivity$6;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/MainActivity$6;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->sendGaTokenRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showJointRequest()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->requirePermissions()V

    return-void
.end method

.method static synthetic access$1000(Lru/rocketbank/r2d2/activities/MainActivity;)Lru/rocketbank/core/model/UserModel;
    .locals 0

    .line 114
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object p0
.end method

.method static synthetic access$1100(Lru/rocketbank/r2d2/activities/MainActivity;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 0

    .line 114
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    return-object p0
.end method

.method static synthetic access$1200(Lru/rocketbank/r2d2/activities/MainActivity;)Lcom/mikepenz/materialdrawer/Drawer;
    .locals 0

    .line 114
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-object p0
.end method

.method static synthetic access$1300(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/r2d2/widgets/RocketDrawer;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->showActiveFragment(Lru/rocketbank/r2d2/widgets/RocketDrawer;)V

    return-void
.end method

.method static synthetic access$1400(Lru/rocketbank/r2d2/activities/MainActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/activities/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->checkGooglePlayServices()V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/view/View;
    .locals 0

    .line 114
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->fixView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->setupPaddingIfNeed()V

    return-void
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->selectCurrentFragment()V

    return-void
.end method

.method static synthetic access$600(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 0

    .line 114
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object p0
.end method

.method static synthetic access$700(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->onUserModelRefresh(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method static synthetic access$800(Lru/rocketbank/r2d2/activities/MainActivity;Lrx/Observable;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->doJointRequest(Lrx/Observable;)V

    return-void
.end method

.method static synthetic access$900(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 114
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method private checkGooglePlayServices()V
    .locals 2

    .line 321
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showUpdateGooglePlay()V

    return-void

    .line 337
    :pswitch_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showInstallGooglePlay()V

    return-void

    :pswitch_2
    return-void

    :cond_0
    return-void

    .line 342
    :cond_1
    :pswitch_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showUpdateGoogleDisableOrInvalid()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private clearSupportBadge()V
    .locals 2

    .line 452
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    const-class v0, Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/UserModel;->setUnreadMessages(I)V

    .line 454
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->updateSupportBadge()V

    :cond_0
    return-void
.end method

.method private configureDrawerLayout()V
    .locals 7

    .line 845
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Lru/rocketbank/r2d2/activities/MainActivity$11;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/activities/MainActivity$11;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 860
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 861
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    :cond_0
    return-void
.end method

.method private configureMainMenu(Lru/rocketbank/core/model/UserModel;)V
    .locals 9

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1033
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0153

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerView:Landroid/view/View;

    .line 1035
    new-instance v1, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerView:Landroid/view/View;

    invoke-direct {v1, v3}, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerViewHolder:Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

    .line 1038
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getRates()Lru/rocketbank/core/model/UserModel$Rates;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 1040
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerViewHolder:Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

    iget-object v1, v1, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->currencyBlock:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getRates()Lru/rocketbank/core/model/UserModel$Rates;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel$Rates;->getCardUsd()D

    move-result-wide v1

    .line 1042
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getRates()Lru/rocketbank/core/model/UserModel$Rates;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/core/model/UserModel$Rates;->getCardEur()D

    move-result-wide v4

    .line 1044
    iget-object v6, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerViewHolder:Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

    iget-object v6, v6, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->usd:Landroid/widget/TextView;

    iget-object v7, p0, Lru/rocketbank/r2d2/activities/MainActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const-string v8, ""

    invoke-virtual {v7, v1, v2, v8, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerViewHolder:Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

    iget-object v1, v1, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->eur:Landroid/widget/TextView;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/MainActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const-string v6, ""

    invoke-virtual {v2, v4, v5, v6, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerViewHolder:Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

    iget-object v1, v1, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->url:Landroid/widget/TextView;

    new-instance v2, Lru/rocketbank/r2d2/activities/MainActivity$13;

    invoke-direct {v2, p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity$13;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/UserModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1053
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerViewHolder:Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;

    iget-object v1, v1, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->currencyBlock:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    :goto_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getStaticMenuHead()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1057
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->createMoneyMenu(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1058
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getStaticMenuBottom()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz p1, :cond_3

    .line 1064
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/mikepenz/materialdrawer/Drawer;->setItems(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1066
    :cond_3
    new-instance p1, Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-direct {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;-><init>()V

    .line 1067
    invoke-virtual {p1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1068
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withHeaderDivider$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1069
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withActionBarDrawerToggle$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->headerView:Landroid/view/View;

    .line 1070
    invoke-virtual {p1, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withHeader(Landroid/view/View;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1071
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withHeaderClickable$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1072
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {p1, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/activities/MainActivity$14;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/MainActivity$14;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    .line 1073
    invoke-virtual {p1, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1091
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withSliderBackgroundColorRes$90ebf22()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1092
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withTranslucentStatusBar$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1093
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withStatusBarColor(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object p1

    .line 1094
    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->build()Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    .line 1096
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_4

    .line 1097
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {p1, p0}, Lcom/mikepenz/materialdrawer/Drawer;->keyboardSupportEnabled$3ef676ad(Landroid/app/Activity;)V

    .line 1101
    :cond_4
    :goto_2
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerSavedState:Landroid/os/Parcelable;

    if-eqz p1, :cond_6

    .line 1102
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1104
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerSavedState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1106
    :cond_5
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->selectCurrentFragment()V

    :cond_6
    return-void
.end method

.method private createDrawerItem()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 2

    .line 995
    new-instance v0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;-><init>()V

    const/4 v1, 0x0

    .line 996
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v1, 0x7f06024b

    .line 998
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectedColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v1, 0x7f060200

    .line 999
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectedTextColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v1, 0x7f06008b

    .line 1000
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withDescriptionTextColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    return-object v0
.end method

.method private createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 2

    .line 989
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItem()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v1, 0x7f060228

    .line 990
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIconColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v1, 0x7f060200

    .line 991
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectedIconColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    return-object v0
.end method

.method private createDrawerItemWithDescription()Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;
    .locals 2

    .line 1004
    new-instance v0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;-><init>()V

    const/4 v1, 0x0

    .line 1005
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    const v1, 0x7f060228

    .line 1006
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withTextColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    const v1, 0x7f06024b

    .line 1008
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withSelectedColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    const v1, 0x7f060200

    .line 1009
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withSelectedTextColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    const v1, 0x7f06008b

    .line 1010
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withDescriptionTextColorRes(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    return-object v0
.end method

.method private createMoneyMenu(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/UserModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 1154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 1162
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAvailableCards()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAvailableCards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1163
    :goto_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 1164
    :goto_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getIssues()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getIssues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    const v6, 0x7f080121

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    if-eqz v5, :cond_c

    .line 1166
    :cond_4
    new-instance v7, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;

    invoke-direct {v7}, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;-><init>()V

    invoke-virtual {v7, v3}, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;->withDivider(Z)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object v7

    const v8, 0x7f1100a4

    invoke-virtual {v7, v8}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    .line 1170
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAccounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/rocketbank/core/model/AccountModel;

    if-eqz v7, :cond_5

    .line 1174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-class v9, Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1175
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemWithDescription()Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object v9

    const-class v10, Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    .line 1176
    invoke-virtual {v9, v10, v8}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withFragment(Ljava/lang/Class;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object v9

    .line 1177
    invoke-virtual {v7}, Lru/rocketbank/core/model/AccountModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1178
    invoke-static {v7}, Lru/rocketbank/r2d2/activities/MainActivity;->getCardIcon(Lru/rocketbank/core/model/AccountModel;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    iget-object v10, p0, Lru/rocketbank/r2d2/activities/MainActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 1179
    invoke-virtual {v7}, Lru/rocketbank/core/model/AccountModel;->getBalance()D

    move-result-wide v11

    invoke-virtual {v7}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v13

    invoke-virtual {v13}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withDescription(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    new-instance v10, Lru/rocketbank/r2d2/activities/MainActivity$15;

    invoke-direct {v10, p0, v7, v8}, Lru/rocketbank/r2d2/activities/MainActivity$15;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/AccountModel;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v9, v10}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    .line 1190
    invoke-virtual {v7}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v9

    sget-object v10, Lru/rocketbank/core/model/enums/Status;->BLOCKED:Lru/rocketbank/core/model/enums/Status;

    if-eq v9, v10, :cond_6

    invoke-virtual {v7}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v9

    sget-object v10, Lru/rocketbank/core/model/enums/Status;->FRAUD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    if-eq v9, v10, :cond_6

    invoke-virtual {v7}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v9

    sget-object v10, Lru/rocketbank/core/model/enums/Status;->HARD_BLOCKED:Lru/rocketbank/core/model/enums/Status;

    if-ne v9, v10, :cond_7

    :cond_6
    const v9, 0x7f0601eb

    .line 1191
    invoke-virtual {v8, v9}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withTextColorRes(I)Ljava/lang/Object;

    const v9, 0x7f0601ec

    .line 1192
    invoke-virtual {v8, v9}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withDescriptionTextColorRes(I)Ljava/lang/Object;

    .line 1193
    invoke-static {v7}, Lru/rocketbank/r2d2/activities/MainActivity;->getCardBlockIcon(Lru/rocketbank/core/model/AccountModel;)I

    move-result v7

    invoke-virtual {v8, v7}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withIcon(I)Ljava/lang/Object;

    const v7, 0x7f110095

    .line 1194
    invoke-virtual {v8, v7}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withDescription(I)Ljava/lang/Object;

    .line 1196
    :cond_7
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    if-eqz v5, :cond_b

    .line 1201
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getIssues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/IssueModel;

    if-eqz v5, :cond_9

    .line 1206
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemWithDescription()Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object v7

    .line 1207
    invoke-virtual {v5}, Lru/rocketbank/core/model/IssueModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1208
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v8

    invoke-static {v8}, Lru/rocketbank/r2d2/activities/MainActivity;->getCardIssueIcon(Lru/rocketbank/core/model/AccountModel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1209
    invoke-virtual {v7, v2}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withEnabled(Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    const-string v8, ""

    .line 1211
    sget-object v9, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$StatusIssue:[I

    invoke-virtual {v5}, Lru/rocketbank/core/model/IssueModel;->getStatus()Lru/rocketbank/core/model/enums/StatusIssue;

    move-result-object v10

    invoke-virtual {v10}, Lru/rocketbank/core/model/enums/StatusIssue;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-string/jumbo v8, "\u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u043e \u043f\u0440\u0438\u0434\u0443\u043c\u0430\u0442\u044c \u043f\u0438\u043d\u043a\u043e\u0434"

    .line 1223
    invoke-virtual {v7, v3}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withEnabled(Z)Ljava/lang/Object;

    .line 1224
    new-instance v9, Lru/rocketbank/r2d2/activities/MainActivity$16;

    invoke-direct {v9, p0, v5}, Lru/rocketbank/r2d2/activities/MainActivity$16;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/IssueModel;)V

    invoke-virtual {v7, v9}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    goto :goto_6

    .line 1219
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u041f\u043e\u0434\u0430\u043d\u0430 \u0437\u0430\u044f\u0432\u043a\u0430 \u043d\u0430 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u0435 \u043d\u043e\u0432\u043e\u0439 \u043a\u0430\u0440\u0442\u044b \u0432 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lru/rocketbank/core/model/IssueModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v5}, Lru/rocketbank/core/model/IssueModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v5

    invoke-static {v5}, Lru/rocketbank/r2d2/activities/MainActivity;->getText(Lru/rocketbank/core/model/enums/Currency;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_a
    const-string/jumbo v5, "\u0420\u043e\u043a\u0435\u0442\u0440\u0443\u0431\u043b\u044f\u0445 =)"

    :goto_5
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :pswitch_2
    const-string/jumbo v8, "\u0414\u043e\u0441\u0442\u0430\u0432\u043a\u0430 \u043a\u0430\u0440\u0442\u044b \u0441\u043e\u0433\u043b\u0430\u0441\u043e\u0432\u0430\u043d\u0430"

    goto :goto_6

    :pswitch_3
    const-string/jumbo v8, "\u041a\u0430\u0440\u0442\u0430 \u0433\u043e\u0442\u043e\u0432\u0430, \u043e\u0441\u0442\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0433\u043b\u0430\u0441\u043e\u0432\u0430\u0442\u044c \u0432\u0440\u0435\u043c\u044f \u0438 \u043c\u0435\u0441\u0442\u043e \u0434\u043e\u0441\u0442\u0430\u0432\u043a\u0438"

    .line 1234
    :goto_6
    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withDescription(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    if-eqz v1, :cond_c

    .line 1239
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v1

    const-class v4, Lru/rocketbank/r2d2/fragments/card/NewCardFragment;

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v1

    const v4, 0x7f11029a

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v1, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_c
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAvailableAccounts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1255
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_7

    :cond_d
    move v1, v2

    .line 1256
    :goto_7
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v3

    goto :goto_8

    :cond_e
    move v4, v2

    :goto_8
    if-nez v1, :cond_f

    if-eqz v4, :cond_12

    .line 1258
    :cond_f
    new-instance v5, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;

    invoke-direct {v5}, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;-><init>()V

    invoke-virtual {v5, v3}, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;->withDivider(Z)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object v5

    const v7, 0x7f1103ef

    invoke-virtual {v5, v7}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_11

    .line 1262
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getSafeAccounts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/model/SafeAccount;

    if-eqz v5, :cond_10

    .line 1266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-class v8, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lru/rocketbank/core/model/SafeAccount;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1267
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemWithDescription()Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object v8

    const-class v9, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    .line 1268
    invoke-virtual {v8, v9, v7}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withFragment(Ljava/lang/Class;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object v7

    .line 1269
    invoke-virtual {v5}, Lru/rocketbank/core/model/SafeAccount;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1270
    invoke-virtual {v5}, Lru/rocketbank/core/model/SafeAccount;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v8

    invoke-static {v8}, Lru/rocketbank/r2d2/activities/MainActivity;->getSafeIcon(Lru/rocketbank/core/model/enums/Currency;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    iget-object v8, p0, Lru/rocketbank/r2d2/activities/MainActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 1271
    invoke-virtual {v5}, Lru/rocketbank/core/model/SafeAccount;->getBalance()D

    move-result-wide v9

    invoke-virtual {v5}, Lru/rocketbank/core/model/SafeAccount;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v11

    invoke-virtual {v11}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withDescription(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    new-instance v8, Lru/rocketbank/r2d2/activities/MainActivity$17;

    invoke-direct {v8, p0, v5}, Lru/rocketbank/r2d2/activities/MainActivity$17;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/SafeAccount;)V

    .line 1272
    invoke-virtual {v7, v8}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    move-result-object v5

    .line 1267
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    if-eqz v1, :cond_12

    .line 1284
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v1

    const-class v4, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v1

    const v4, 0x7f11029c

    invoke-virtual {v1, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v1, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_12
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->isCanOpenDeposit()Z

    move-result v1

    .line 1292
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getDeposits()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getDeposits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    move v2, v3

    :cond_13
    if-nez v2, :cond_14

    if-eqz v1, :cond_18

    .line 1294
    :cond_14
    new-instance v4, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;

    invoke-direct {v4}, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;-><init>()V

    invoke-virtual {v4, v3}, Lru/rocketbank/r2d2/widgets/RocketSectionDrawerItem;->withDivider(Z)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object v4

    const v5, 0x7f11014f

    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;->withName(I)Lcom/mikepenz/materialdrawer/model/SectionDrawerItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_17

    .line 1298
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getDeposits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/DepositModel;

    if-eqz v2, :cond_15

    .line 1302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1303
    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v5

    invoke-virtual {v5}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v5

    invoke-virtual {v5}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_16
    const-string v5, ""

    .line 1304
    :goto_b
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemWithDescription()Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object v7

    const-class v8, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    .line 1305
    invoke-virtual {v7, v8, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withFragment(Ljava/lang/Class;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object v4

    .line 1306
    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1307
    invoke-static {}, Lru/rocketbank/r2d2/activities/MainActivity;->getDepositIcon()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    .line 1308
    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getBalance()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withDescription(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    iget-object v7, p0, Lru/rocketbank/r2d2/activities/MainActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 1309
    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getBalance()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9, v5, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withDescription(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;

    new-instance v5, Lru/rocketbank/r2d2/activities/MainActivity$18;

    invoke-direct {v5, p0, v2}, Lru/rocketbank/r2d2/activities/MainActivity$18;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/DepositModel;)V

    .line 1310
    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    move-result-object v2

    .line 1304
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_17
    if-eqz v1, :cond_18

    .line 1322
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object p1

    const-class v1, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object p1

    const v1, 0x7f11029b

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {p1, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doJointRequest(Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
            ">;)V"
        }
    .end annotation

    .line 491
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 492
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/activities/MainActivity$10;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/MainActivity$10;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    .line 493
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private findByFragmentTag(Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 4

    .line 1135
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1139
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 1140
    instance-of v3, v2, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    if-eqz v3, :cond_1

    .line 1141
    check-cast v2, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    .line 1142
    invoke-virtual {v2}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1143
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private static getCardBlockIcon(Lru/rocketbank/core/model/AccountModel;)I
    .locals 1

    .line 667
    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    invoke-virtual {p0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object p0

    invoke-virtual {p0}, Lru/rocketbank/core/model/TariffModel;->getCobrandName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object p0

    .line 668
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Cobrand:[I

    invoke-virtual {p0}, Lru/rocketbank/core/model/enums/Cobrand;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0x7f08017d

    return p0

    :cond_0
    const p0, 0x7f080170

    return p0
.end method

.method private static getCardIcon(Lru/rocketbank/core/model/AccountModel;)I
    .locals 1

    .line 657
    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    invoke-virtual {p0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object p0

    invoke-virtual {p0}, Lru/rocketbank/core/model/TariffModel;->getCobrandName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object p0

    .line 658
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Cobrand:[I

    invoke-virtual {p0}, Lru/rocketbank/core/model/enums/Cobrand;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0x7f08017c

    return p0

    :cond_0
    const p0, 0x7f08016f

    return p0
.end method

.method private static getCardIssueIcon(Lru/rocketbank/core/model/AccountModel;)I
    .locals 1

    .line 680
    :try_start_0
    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    invoke-virtual {p0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object p0

    invoke-virtual {p0}, Lru/rocketbank/core/model/TariffModel;->getCobrandName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    sget-object p0, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    .line 684
    :goto_0
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Cobrand:[I

    invoke-virtual {p0}, Lru/rocketbank/core/model/enums/Cobrand;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0x7f08017e

    return p0

    :cond_0
    const p0, 0x7f080171

    return p0
.end method

.method private static getDepositIcon()I
    .locals 1

    const v0, 0x7f080181

    return v0
.end method

.method private static getSafeIcon(Lru/rocketbank/core/model/enums/Currency;)I
    .locals 1

    .line 698
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Currency:[I

    invoke-virtual {p0}, Lru/rocketbank/core/model/enums/Currency;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f080182

    return p0

    :pswitch_0
    const p0, 0x7f080148

    return p0

    :pswitch_1
    const p0, 0x7f080141

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStaticMenuHead()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->staticContent:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 892
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->updateSupportBadge()V

    .line 893
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->staticContent:Ljava/util/List;

    return-object v0

    .line 896
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->staticContent:Ljava/util/List;

    .line 899
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const v2, 0x7f080131

    if-lt v0, v1, :cond_1

    .line 900
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 902
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 905
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v1

    const-class v2, Lru/rocketbank/r2d2/root/chat/ChatFragment;

    .line 906
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v1

    const v2, 0x7f1102a2

    .line 907
    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v2, 0x7f08018c

    .line 908
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    new-instance v2, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;-><init>()V

    .line 909
    invoke-virtual {v2, v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->withBadgeBackground(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->withTextColor$6a1c8365()Lcom/mikepenz/materialdrawer/holder/BadgeStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withBadgeStyle(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    .line 911
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->updateSupportBadge()V

    .line 913
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v0

    const-class v1, Lru/rocketbank/r2d2/root/feed/FeedFragment;

    .line 914
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v0

    const v1, 0x7f110294

    .line 915
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v1, 0x7f080157

    .line 916
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->feedItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    .line 918
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->staticContent:Ljava/util/List;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/MainActivity;->feedItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 921
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const-class v4, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const v4, 0x7f1102a3

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v4, 0x7f08019d

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 922
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const-class v4, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const v4, 0x7f110290

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v4, 0x7f08017a

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 923
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const-class v4, Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const v4, 0x7f110295

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v4, 0x7f08014a

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 924
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const-class v4, Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v3

    const v4, 0x7f11029d

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v4, 0x7f080173

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    aput-object v3, v1, v2

    .line 918
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 927
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->staticContent:Ljava/util/List;

    return-object v0
.end method

.method private static getText(Lru/rocketbank/core/model/enums/Currency;)Ljava/lang/String;
    .locals 1

    .line 646
    sget-object v0, Lru/rocketbank/r2d2/activities/MainActivity$19;->$SwitchMap$ru$rocketbank$core$model$enums$Currency:[I

    invoke-virtual {p0}, Lru/rocketbank/core/model/enums/Currency;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "\u0440\u0443\u0431\u043b\u044f\u0445"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "\u0435\u0432\u0440\u043e"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "\u0434\u043e\u043b\u043b\u0430\u0440\u0430\u0445"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCanMoveBack()Z
    .locals 2

    .line 569
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "TAG_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    .line 576
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->canBack()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onStartPhone()V
    .locals 10

    .line 823
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->setActionIsCompleted()V

    .line 824
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getPhone()Lru/rocketbank/core/model/PhoneModel;

    move-result-object v0

    .line 825
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lru/rocketbank/core/manager/DataManager;->getProvider(J)Lru/rocketbank/core/model/provider/Provider;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 827
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v1, "number"

    .line 828
    invoke-virtual {v0}, Lru/rocketbank/core/model/PhoneModel;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    sget-object v4, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Landroid/os/Bundle;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private onUserModelRefresh(Lru/rocketbank/core/model/UserModel;)V
    .locals 4

    .line 423
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/MainActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    const-string v3, "context"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authorization"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    new-instance v3, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v3, p0, v2, v0}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    .line 2044
    invoke-virtual {v3, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 424
    iput-object v3, p0, Lru/rocketbank/r2d2/activities/MainActivity;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 427
    :cond_0
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->sendToken:Z

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/MainActivity;->sendGaTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    iput-boolean v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->sendToken:Z

    :cond_1
    const-string v0, "MainActivity"

    const-string v1, "User model acquired"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 435
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->clearSupportBadge()V

    .line 436
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->configureMainMenu(Lru/rocketbank/core/model/UserModel;)V

    .line 437
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->configureDrawerLayout()V

    .line 438
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showStartupFragment(Landroid/content/Intent;)V

    .line 440
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->atmsManager:Lru/rocketbank/core/manager/AtmsManager;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getAtmsHash()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/AtmsManager;->requireUpdate(I)V

    .line 441
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->contactManager:Lru/rocketbank/core/manager/ContactManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/manager/ContactManager;->loadContacts(Z)V

    .line 444
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->showJointRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->showJointRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private popBack()V
    .locals 2

    .line 554
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    .line 556
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->isCanPopBack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 562
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/MainActivity;->moveTaskToBack(Z)Z

    return-void

    .line 564
    :cond_1
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onBackPressed()V

    return-void
.end method

.method private replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 616
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->saveInstanceState:Z

    if-eqz v0, :cond_0

    return-void

    .line 620
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 626
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 630
    :cond_1
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    .line 633
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090105

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    .line 635
    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 636
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 639
    invoke-static {p0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 640
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 642
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->setActionButtonIcon()V

    return-void
.end method

.method private requirePermissions()V
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 282
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 283
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    return-void

    .line 289
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 292
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 293
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 298
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 299
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 306
    new-array v0, v0, [Ljava/lang/String;

    .line 309
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 310
    aput-object v4, v0, v1

    add-int/2addr v1, v2

    goto :goto_2

    .line 314
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    const v1, 0xdaaaaa

    .line 315
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/activities/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private selectCurrentFragment()V
    .locals 4

    .line 1111
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1115
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/rocketbank/r2d2/activities/MainActivity;->findByFragmentTag(Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1117
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v3, v2}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection$7a7ce801(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    .line 1120
    :cond_1
    instance-of v2, v0, Lru/rocketbank/r2d2/ActionBarTitleInstaller;

    if-eqz v2, :cond_2

    .line 1121
    check-cast v0, Lru/rocketbank/r2d2/ActionBarTitleInstaller;

    invoke-interface {v0}, Lru/rocketbank/r2d2/ActionBarTitleInstaller;->getActionBarTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1125
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1127
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logLastFragment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private setActionIsCompleted()V
    .locals 2

    const/4 v0, 0x1

    .line 816
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->isActionCompleted:Z

    .line 817
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setupPaddingIfNeed()V
    .locals 3

    .line 256
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 257
    sget-object v1, Lru/rocketbank/r2d2/activities/MainActivity;->problemModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-static {p0}, Lru/rocketbank/r2d2/helpers/UIHelper;->getNavBarHeight(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x28

    .line 261
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    mul-int/2addr v0, v1

    .line 263
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->fixView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 264
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->fixView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->fixView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    return-void
.end method

.method private showActiveFragment(Lru/rocketbank/r2d2/widgets/RocketDrawer;)V
    .locals 5

    .line 1331
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->saveInstanceState:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/RocketDrawer;->getFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1337
    :try_start_0
    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/RocketDrawer;->getFragmentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1338
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1340
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_1

    return-void

    .line 1346
    :cond_1
    invoke-static {p0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 1347
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lru/rocketbank/r2d2/root/chat/ChatFragment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 1350
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual {v0, v3}, Lru/rocketbank/core/manager/PushManager;->allowMessages(Z)V

    .line 1351
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/PushManager;->cancelMessages()V

    goto :goto_2

    .line 1352
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lru/rocketbank/r2d2/root/feed/FeedFragment;

    if-ne v0, v2, :cond_3

    .line 1353
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual {v0, v3}, Lru/rocketbank/core/manager/PushManager;->allowOperations(Z)V

    .line 1354
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/PushManager;->cancelOperations()V

    goto :goto_2

    .line 1356
    :cond_3
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lru/rocketbank/core/manager/PushManager;->allowMessages(Z)V

    .line 1357
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/manager/PushManager;->allowOperations(Z)V

    .line 1360
    :goto_2
    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    .line 1362
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_4

    .line 1363
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    .line 1366
    :cond_4
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/RocketDrawer;->getFragmentTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method private showBack()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "Drawer: Back"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showFeedIfEmpty()V
    .locals 1

    .line 810
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showFeed()V

    :cond_0
    return-void
.end method

.method private showHamburger()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "Drawer: Hamburger"

    .line 540
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showInstallGooglePlay()V
    .locals 4

    .line 362
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MainActivity;->isShowNotification:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 363
    sput-boolean v0, Lru/rocketbank/r2d2/activities/MainActivity;->isShowNotification:Z

    .line 366
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 368
    sget-object v1, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    .line 369
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v2, 0x7f11021a

    .line 370
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11021b

    .line 371
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v1, v0, v2, v3}, Lru/rocketbank/core/manager/PushManager;->showUpdate$6bd33ff8(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showJointRequest()V
    .locals 6

    .line 459
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v0

    const/4 v1, 0x0

    .line 464
    aget-object v0, v0, v1

    .line 465
    invoke-virtual {v0}, Lru/rocketbank/core/model/JointAccount;->isConfirmed()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 468
    :cond_1
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/MainActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 469
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/MainActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 472
    :cond_2
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1101b2

    .line 473
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1101b1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 474
    invoke-virtual {v0}, Lru/rocketbank/core/model/JointAccount;->getUser_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lru/rocketbank/r2d2/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110130

    new-instance v3, Lru/rocketbank/r2d2/activities/MainActivity$9;

    invoke-direct {v3, p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity$9;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/JointAccount;)V

    .line 475
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11001e

    new-instance v3, Lru/rocketbank/r2d2/activities/MainActivity$8;

    invoke-direct {v3, p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity$8;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/JointAccount;)V

    .line 481
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private showStartupFragment(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_9

    .line 772
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->isActionCompleted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "KEY_ACTION"

    .line 777
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 780
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showFeedIfEmpty()V

    return-void

    :cond_1
    const-string v1, "ru.rocketbank.r2d2.action.PHONE"

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 785
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showFeedIfEmpty()V

    .line 786
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/DataManager;->getProviders()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 787
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/DataManager;->loadProviders()V

    return-void

    .line 789
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->onStartPhone()V

    return-void

    :cond_3
    const-string v1, "ru.rocketbank.r2d2.action.SUPPORT"

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 795
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showSupport()V

    goto :goto_0

    :cond_4
    const-string v1, "ru.rocketbank.r2d2.action.REFILL"

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 797
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 798
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;->newInstance(Ljava/lang/String;ZFF)Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    move-result-object p1

    const-class v0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "ru.rocketbank.r2d2.action.FRIEND"

    .line 800
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "KEY_EXTRAS"

    .line 801
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 802
    invoke-static {p1}, Lru/rocketbank/core/manager/RocketShortcutManager;->readContact(Landroid/os/Bundle;)Lru/rocketbank/core/model/contact/Contact;

    move-result-object p1

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/friends/FriendActivity;->startActivity(Landroid/content/Context;Lru/rocketbank/core/model/contact/Contact;)V

    goto :goto_0

    :cond_6
    const-string p1, "ru.rocketbank.r2d2.action.FEED"

    .line 803
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_8

    .line 804
    :cond_7
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showFeed()V

    .line 806
    :cond_8
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->setActionIsCompleted()V

    return-void

    .line 773
    :cond_9
    :goto_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showFeedIfEmpty()V

    return-void
.end method

.method private showUpdateGoogleDisableOrInvalid()V
    .locals 4

    .line 348
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MainActivity;->isShowNotification:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 349
    sput-boolean v0, Lru/rocketbank/r2d2/activities/MainActivity;->isShowNotification:Z

    .line 352
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 354
    sget-object v1, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    .line 355
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v2, 0x7f110218

    .line 356
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110219

    .line 357
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v1, v0, v2, v3}, Lru/rocketbank/core/manager/PushManager;->showUpdate$6bd33ff8(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showUpdateGooglePlay()V
    .locals 4

    .line 375
    sget-boolean v0, Lru/rocketbank/r2d2/activities/MainActivity;->isShowNotification:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 376
    sput-boolean v0, Lru/rocketbank/r2d2/activities/MainActivity;->isShowNotification:Z

    .line 379
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 381
    sget-object v1, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    .line 382
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v2, 0x7f11021c

    .line 383
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11021d

    .line 384
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {v1, v0, v2, v3}, Lru/rocketbank/core/manager/PushManager;->showUpdate$6bd33ff8(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSupportBadge()V
    .locals 2

    .line 931
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    if-nez v0, :cond_0

    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getUnreadMessages()I

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getUnreadMessages()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withBadge(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/MainActivity$12;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/MainActivity$12;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    .line 937
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    goto :goto_0

    .line 948
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withoutBadge()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    .line 950
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/Drawer;->updateItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    :cond_2
    return-void
.end method

.method private updateWidgetState()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getActionBarDrawerToggle()Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 1

    .line 866
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method public getDrawer()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 1

    .line 591
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-object v0
.end method

.method public getStaticMenuBottom()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    return-object v0

    .line 960
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    .line 962
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 964
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const-class v3, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/MainActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v3}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v3

    const-string v4, "userData"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3043
    sget-object v4, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 4029
    invoke-virtual {v3}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v3

    .line 3043
    invoke-virtual {v4, v3}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v3

    .line 3013
    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/Cobrand;->getMenu()I

    move-result v3

    .line 964
    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v3, 0x7f08017f

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 965
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const-class v4, Lru/rocketbank/r2d2/fragments/discounts/DiscountsFragment;

    invoke-virtual {v2, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const v4, 0x7f110293

    invoke-virtual {v2, v4}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v4, 0x7f08013d

    invoke-virtual {v2, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 966
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const-class v5, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-virtual {v2, v5}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const v5, 0x7f110291

    invoke-virtual {v2, v5}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v5, 0x7f080126

    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 963
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 968
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->isShopWorks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v0

    const-class v1, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;

    .line 970
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v0

    const v1, 0x7f1102a1

    .line 971
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v1, 0x7f08022b

    .line 972
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->shopItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    .line 973
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->shopItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 977
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const-class v5, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v2, v5}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const v5, 0x7f11029e

    invoke-virtual {v2, v5}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v5, 0x7f080178

    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    aput-object v2, v1, v3

    .line 978
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->createDrawerItemTinted()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const-class v3, Lru/rocketbank/r2d2/fragments/InfoFragment;

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object v2

    const v3, 0x7f110296

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v3, 0x7f08014d

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    aput-object v2, v1, v4

    .line 976
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 981
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->bottomItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDrawerOpen()Z
    .locals 1

    .line 1410
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1416
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1417
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 596
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/IHostFragment;

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lru/rocketbank/r2d2/IHostFragment;

    .line 607
    invoke-interface {v0}, Lru/rocketbank/r2d2/IHostFragment;->canBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 608
    invoke-interface {v0}, Lru/rocketbank/r2d2/IHostFragment;->moveBack()V

    return-void

    .line 612
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->popBack()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 871
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 873
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MainActivity"

    const-string v1, "onCreate"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0c0044

    .line 186
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->setContentView(I)V

    const v0, 0x7f09017c

    .line 188
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->findView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->fixView:Landroid/view/View;

    .line 190
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 191
    new-instance v1, Lru/rocketbank/r2d2/activities/MainActivity$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/MainActivity$4;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 204
    invoke-static {p0}, Lru/rocketbank/r2d2/utils/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->saveInstanceState:Z

    .line 207
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAtmsManager()Lru/rocketbank/core/manager/AtmsManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->atmsManager:Lru/rocketbank/core/manager/AtmsManager;

    .line 208
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 209
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 210
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    .line 211
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    .line 212
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->dataManager:Lru/rocketbank/core/manager/DataManager;

    .line 213
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getContactManager()Lru/rocketbank/core/manager/ContactManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->contactManager:Lru/rocketbank/core/manager/ContactManager;

    .line 215
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->createSupportShortcut()V

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->createRefillShortcut()V

    .line 217
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/RocketShortcutManager;->createPhoneShortcut()V

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    const-string v0, "KEY_DRAWER_SCROLL_POSITION"

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerSavedState:Landroid/os/Parcelable;

    const-string v0, "KEY_ACTION_IS_COMPLETED"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->isActionCompleted:Z

    .line 225
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->clearSupportBadge()V

    .line 227
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/activities/MainActivity$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/MainActivity$5;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 237
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 239
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->requirePermissionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logEndFirstRefillFacebook()V

    return-void
.end method

.method public onEvent(Lru/rocketbank/core/network/model/ProvidersResponse;)V
    .locals 1

    .line 834
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 837
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string v0, "ru.rocketbank.r2d2.action.PHONE"

    .line 839
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->isActionCompleted:Z

    if-nez p1, :cond_2

    .line 840
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->onStartPhone()V

    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 520
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->isActionCompleted:Z

    .line 522
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 732
    invoke-static {p0}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 734
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_4

    .line 735
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lru/rocketbank/r2d2/IHostFragment;

    if-eqz p1, :cond_2

    .line 736
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    check-cast p1, Lru/rocketbank/r2d2/IHostFragment;

    invoke-interface {p1}, Lru/rocketbank/r2d2/IHostFragment;->canBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 737
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->onBackPressed()V

    goto :goto_0

    .line 739
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->isCanMoveBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 740
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->onBackPressed()V

    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->toggleDrawer()V

    goto :goto_0

    .line 746
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->isCanMoveBack()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 747
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->onBackPressed()V

    goto :goto_0

    .line 749
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->toggleDrawer()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 756
    :cond_4
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 710
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->showJointRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->checkGooglePlayServicesRunnagle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->requirePermissionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 717
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->mUserModelSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->mUserModelSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->mUserModelSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->mUserModelSubscription:Lrx/Subscription;

    .line 723
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 727
    :cond_2
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 880
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 882
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_0

    .line 883
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 390
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    const-string v0, "MainActivity"

    const-string v1, "onResume"

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->saveInstanceState:Z

    .line 395
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 400
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/MainActivity$7;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/MainActivity$7;-><init>(Lru/rocketbank/r2d2/activities/MainActivity;)V

    .line 401
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->mUserModelSubscription:Lrx/Subscription;

    .line 419
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->checkGooglePlayServicesRunnagle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1397
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 1398
    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->saveInstanceState:Z

    .line 1399
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1401
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    const-string v1, "KEY_DRAWER_SCROLL_POSITION"

    .line 1402
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "KEY_ACTION_IS_COMPLETED"

    .line 1405
    iget-boolean v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->isActionCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 585
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/PushManager;->allowMessages(Z)V

    .line 586
    sget-object v0, Lru/rocketbank/core/manager/PushManager;->instance:Lru/rocketbank/core/manager/PushManager;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/manager/PushManager;->allowOperations(Z)V

    .line 587
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStop()V

    return-void
.end method

.method public pushFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1380
    iget-boolean v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->saveInstanceState:Z

    if-eqz v0, :cond_0

    return-void

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 1385
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 1387
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    const p1, 0x7f090105

    .line 1388
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->activeFragment:Landroid/support/v4/app/Fragment;

    const-string v2, "TAG_FRAGMENT"

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "TAG_FRAGMENT"

    .line 1389
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 1390
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1391
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    return-void
.end method

.method public setActionButtonIcon()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "setActionButtonIcon"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "TAG_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showBack()V

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->showHamburger()V

    .line 533
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    :cond_1
    const-string v0, "MainActivity"

    const-string v1, "setActionButtonIcon done"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showDeposit(Lru/rocketbank/core/model/DepositModel;)V
    .locals 4

    .line 1443
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->newInstance(Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    move-result-object v0

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public showFeed()V
    .locals 1

    .line 1434
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->feedItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showActiveFragment(Lru/rocketbank/r2d2/widgets/RocketDrawer;)V

    return-void
.end method

.method public showProfile()V
    .locals 2

    .line 1372
    new-instance v0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;-><init>()V

    const-class v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/activities/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public showSafe(Ljava/lang/String;)V
    .locals 3

    .line 1448
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    move-result-object v0

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public showShop()V
    .locals 1

    .line 1430
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->shopItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showActiveFragment(Lru/rocketbank/r2d2/widgets/RocketDrawer;)V

    return-void
.end method

.method public showSupport()V
    .locals 2

    .line 1424
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/UserModel;->setUnreadMessages(I)V

    .line 1425
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/MainActivity;->updateSupportBadge()V

    .line 1426
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->supportItem:Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showActiveFragment(Lru/rocketbank/r2d2/widgets/RocketDrawer;)V

    return-void
.end method

.method public showTransfers()V
    .locals 2

    .line 1438
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;-><init>()V

    .line 1439
    const-class v1, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/activities/MainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toggleDrawer()V
    .locals 1

    .line 760
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity;->drawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->openDrawer()V

    return-void
.end method
