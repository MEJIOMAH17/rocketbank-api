.class public Lru/rocketbank/r2d2/friends/InviteFriendsActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "InviteFriendsActivity.java"


# static fields
.field public static final KEY_REVEAL:Ljava/lang/String; = "reveal"

.field public static final KEY_X:Ljava/lang/String; = "x"

.field public static final KEY_Y:Ljava/lang/String; = "y"


# instance fields
.field private animator:Lio/codetail/animation/SupportAnimator;

.field private fragment:Landroid/view/View;

.field private reveal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;Lio/codetail/animation/SupportAnimator;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->fragment:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 6

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 132
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 135
    invoke-static {p1, v0, v1, v3, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    .line 136
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 137
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    return-object p1
.end method

.method private reverseAnimation()V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->reveal:Z

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->finish()V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->fragment:Landroid/view/View;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    .line 90
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->reverse()Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$2;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)V

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->animator:Lio/codetail/animation/SupportAnimator;

    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->cancel()V

    .line 117
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->finish()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;ZII)V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reveal"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "x"

    .line 32
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "y"

    .line 33
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 76
    instance-of v1, v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lru/rocketbank/r2d2/fragments/RocketFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->reverseAnimation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 40
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0042

    .line 41
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled$1385ff()V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reveal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->reveal:Z

    const v0, 0x7f090184

    .line 48
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->fragment:Landroid/view/View;

    if-nez p1, :cond_1

    .line 50
    iget-boolean p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->reveal:Z

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->fragment:Landroid/view/View;

    new-instance v0, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity$1;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 70
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsActivity;->reverseAnimation()V

    const/4 p1, 0x0

    return p1
.end method
