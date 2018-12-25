.class public Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "InviteFriendsInfoActivity.java"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;


# static fields
.field public static final KEY_REVEAL:Ljava/lang/String; = "reveal"

.field public static final KEY_URL:Ljava/lang/String; = "KEY_URL"

.field public static final KEY_X:Ljava/lang/String; = "x"

.field public static final KEY_Y:Ljava/lang/String; = "y"


# instance fields
.field private activityInviteFriendInfoBinding:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

.field private animator:Lio/codetail/animation/SupportAnimator;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private mContentView:Landroid/view/View;

.field private reveal:Z

.field private url:Ljava/lang/String;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;Lio/codetail/animation/SupportAnimator;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 6

    .line 217
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 223
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 226
    invoke-static {p1, v0, v1, v3, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    .line 227
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 228
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    return-object p1
.end method

.method private reverseAnimation()V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->reveal:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->finish()V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    .line 181
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->reverse()Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$2;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;)V

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 211
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 213
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->cancel()V

    .line 208
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->finish()V

    return-void
.end method

.method private share(Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 92
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->share()V

    .line 106
    :cond_1
    :goto_0
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->invitesPage()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reveal"

    .line 44
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "x"

    .line 45
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "y"

    .line 46
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "KEY_URL"

    .line 47
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->reverseAnimation()V

    return-void
.end method

.method public onClose(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->reverseAnimation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 134
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    const v0, 0x7f0c0041

    .line 137
    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->activityInviteFriendInfoBinding:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->activityInviteFriendInfoBinding:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsInfoHandler;)V

    const v0, 0x7f090197

    .line 140
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->mContentView:Landroid/view/View;

    .line 141
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->url:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->activityInviteFriendInfoBinding:Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;->url:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reveal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->reveal:Z

    if-nez p1, :cond_0

    .line 145
    iget-boolean p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->reveal:Z

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->mContentView:Landroid/view/View;

    new-instance v0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity$1;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFacebook(Landroid/view/View;)V
    .locals 0

    const-string p1, "com.facebook.katana"

    .line 65
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->share(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 165
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 162
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->reverseAnimation()V

    const/4 p1, 0x0

    return p1
.end method

.method public onTwitter(Landroid/view/View;)V
    .locals 0

    const-string p1, "com.twitter.android"

    .line 75
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->share(Ljava/lang/String;)V

    return-void
.end method

.method public onUrl(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->share()V

    return-void
.end method

.method public onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 124
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const-string v1, "userData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-virtual {v1, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getInvitationRevenue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getInvitationRevenue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f09038c

    .line 128
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1104c1

    invoke-virtual {p0, p1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onVk(Landroid/view/View;)V
    .locals 0

    const-string p1, "com.vkontakte.android"

    .line 70
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->share(Ljava/lang/String;)V

    return-void
.end method

.method public share()V
    .locals 3

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 114
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11040d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
