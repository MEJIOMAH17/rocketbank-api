.class public final Lru/rocketbank/r2d2/activities/VideoActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "VideoActivity.java"


# static fields
.field private static final LINK:Ljava/lang/String; = "link"


# instance fields
.field private position:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/activities/VideoActivity;)I
    .locals 0

    .line 14
    iget p0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->position:I

    return p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/activities/VideoActivity;I)I
    .locals 0

    .line 14
    iput p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->position:I

    return p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/activities/VideoActivity;)Landroid/widget/VideoView;
    .locals 0

    .line 14
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/activities/VideoActivity;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/VideoActivity;->setProgress(Z)V

    return-void
.end method

.method private setProgress(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 106
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 107
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/VideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0068

    .line 28
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/VideoActivity;->setContentView(I)V

    const p1, 0x7f0902ba

    .line 29
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->progressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f090408

    .line 30
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    .line 31
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 33
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lru/rocketbank/r2d2/activities/VideoActivity$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/VideoActivity$1;-><init>(Lru/rocketbank/r2d2/activities/VideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 83
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "link"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method protected final onPause()V
    .locals 1

    .line 91
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->position:I

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    .line 98
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/VideoActivity;->setProgress(Z)V

    return-void
.end method
