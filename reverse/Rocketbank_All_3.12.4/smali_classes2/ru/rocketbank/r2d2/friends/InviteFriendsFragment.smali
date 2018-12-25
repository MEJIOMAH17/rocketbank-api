.class public Lru/rocketbank/r2d2/friends/InviteFriendsFragment;
.super Lru/rocketbank/r2d2/friends/FriendsFragment;
.source "InviteFriendsFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;
.implements Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;


# static fields
.field private static final KEY_INVITED_FRIENDS:Ljava/lang/String; = "KEY_INVITED_FRIENDS"


# instance fields
.field private actionBarSize:I

.field content:Landroid/view/View;

.field private currentToolbarColor:I

.field private fabMargin:I

.field private fabTranslationX:I

.field private fabTranslationY:F

.field private flexibleSpaceImageHeight:I

.field private flexibleSpaceShowFabOffset:I

.field private headerView:Landroid/view/View;

.field private imageView:Landroid/view/View;

.field private invitations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;"
        }
    .end annotation
.end field

.field private invitationsSubscription:Lrx/Subscription;

.field private inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

.field private mFabIsShown:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private overlayView:Landroid/view/View;

.field private recyclerViewBackground:Landroid/view/View;

.field private rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field titleURL:Landroid/widget/TextView;

.field private toolbarColor:I

.field videoView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->currentToolbarColor:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitations:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbarColor:I

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    return p0
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->imageView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerViewBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitations:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->currentToolbarColor:I

    return p0
.end method

.method private getFriendsInviteAdapter()Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;
    .locals 1

    .line 297
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    check-cast v0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    return-object v0
.end method

.method private hideFab()V
    .locals 3

    .line 410
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mFabIsShown:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 412
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$15;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$15;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    .line 434
    iput-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mFabIsShown:Z

    :cond_0
    return-void
.end method

.method private requestURL()V
    .locals 2

    .line 195
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    .line 196
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$5;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$5;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    .line 197
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->userSubscription:Lrx/Subscription;

    return-void
.end method

.method private showFab()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mFabIsShown:Z

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 378
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$14;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$14;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mFabIsShown:Z

    :cond_0
    return-void
.end method

.method private showVideo()V
    .locals 1

    .line 405
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method protected createFriendAdapter()Lru/rocketbank/r2d2/friends/FriendsAdapter;
    .locals 3

    .line 227
    new-instance v0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;-><init>(Lrx/functions/Action2;Landroid/view/View;)V

    return-object v0
.end method

.method public filter(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/contact/InvitedFriend;

    .line 480
    invoke-virtual {v2, p1}, Lru/rocketbank/core/model/contact/InvitedFriend;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitations:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    :cond_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getFriendsInviteAdapter()Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->setInvitations(Ljava/util/List;)V

    .line 486
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->filter(Ljava/lang/String;)V

    return-void
.end method

.method public getRawPath(I)Ljava/lang/String;
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getStatusBarHeight()I
    .locals 4

    .line 518
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c00df

    const/4 v1, 0x0

    .line 98
    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    .line 99
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    invoke-virtual {p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/InviteFriendsFragmentHandler;)V

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->content:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->content:Landroid/view/View;

    .line 102
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->titleURL:Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->titleURL:Landroid/widget/TextView;

    .line 103
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->videoView:Landroid/view/TextureView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->videoView:Landroid/view/TextureView;

    .line 104
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->recyclerView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 107
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->progressBar:Landroid/widget/ProgressBar;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 109
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->nothingFound:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->nothingFoundView:Landroid/view/View;

    .line 110
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->nothingFoundText:Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    .line 112
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inviteFriendsFragmentHandler:Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 93
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->invites()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 365
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 366
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance p2, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$13;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$13;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 117
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060254

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 120
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getStatusBarHeight()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 121
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 122
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 123
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700df

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceShowFabOffset:I

    .line 124
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700f0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    .line 125
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getStatusBarHeight()I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->actionBarSize:I

    const p2, 0x7f0902ce

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    .line 128
    invoke-virtual {p2, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 129
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setHasFixedSize(Z)V

    .line 131
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0193

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    .line 132
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    iget v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 135
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setClickable(Z)V

    .line 136
    iget-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$1;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 142
    iget-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->headerView:Landroid/view/View;

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$2;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p3, 0x7f090105

    .line 149
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V

    const p2, 0x7f0901c7

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->imageView:Landroid/view/View;

    const p2, 0x7f09029d

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    const p2, 0x7f090223

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerViewBackground:Landroid/view/View;

    .line 158
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerViewBackground:Landroid/view/View;

    new-instance p3, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$3;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$3;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 164
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    iget p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 166
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700d6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabMargin:I

    .line 167
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/support/design/widget/FloatingActionButton;->setScaleX(F)V

    .line 168
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p2, p3}, Landroid/support/design/widget/FloatingActionButton;->setScaleY(F)V

    .line 169
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 170
    invoke-virtual {p0, v0, v0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->onScrollChanged(IZZ)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 499
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitationsSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->unsubscribe(Lrx/Subscription;)V

    .line 500
    invoke-super {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onDestroyView()V

    return-void
.end method

.method public onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public onFabClick(Landroid/view/View;)V
    .locals 4

    .line 505
    iget p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationX:I

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 506
    iget v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationY:F

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 507
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->titleURL:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, p1, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsInfoActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 211
    invoke-super {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onResume()V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->titleURL:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->requestURL()V

    .line 215
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110245

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 216
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->showVideo()V

    return-void
.end method

.method public onRocketFriendsLoaded(Lru/rocketbank/core/events/ContactsEvent;)V
    .locals 3

    .line 232
    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/events/ErrorEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/events/ContactsEvent;->getErrorEvent()Lru/rocketbank/core/events/ErrorEvent;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/events/ErrorEvent;->getMessageStringResource()I

    move-result v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    .line 240
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->invitations()Lrx/Observable;

    move-result-object v0

    .line 241
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 242
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$12;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$12;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    .line 243
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$11;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$11;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    .line 249
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$10;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$10;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    .line 255
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$9;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$9;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    .line 261
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$8;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$8;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    .line 267
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$6;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;Lru/rocketbank/core/events/ContactsEvent;)V

    new-instance p1, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$7;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$7;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    .line 274
    invoke-virtual {v0, v1, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitationsSubscription:Lrx/Subscription;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 512
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_INVITED_FRIENDS"

    .line 513
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onScrollChanged(IZZ)V
    .locals 5

    .line 302
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 306
    :cond_0
    iget p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    iget p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->actionBarSize:I

    const/4 v0, 0x2

    mul-int/2addr p3, v0

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getStatusBarHeight()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    .line 307
    iget p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->actionBarSize:I

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr p3, v1

    .line 308
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    neg-int v2, p1

    int-to-float v3, v2

    int-to-float p3, p3

    .line 1042
    invoke-static {p3, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 308
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 309
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->imageView:Landroid/view/View;

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    .line 2042
    invoke-static {p3, v3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {v4, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 309
    invoke-virtual {v1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 312
    iget-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerViewBackground:Landroid/view/View;

    const/4 v1, 0x0

    iget v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p1, p1

    div-float/2addr p1, p2

    const p2, 0x3f19999a    # 0.6f

    .line 3042
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 316
    iget-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4042
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 319
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const p2, 0x3ee66666    # 0.45f

    .line 321
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_1

    const/high16 p1, -0x1000000

    .line 322
    iput p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbarColor:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 324
    iput p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbarColor:I

    .line 327
    :goto_0
    iget p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbarColor:I

    iget p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->currentToolbarColor:I

    if-eq p1, p2, :cond_2

    .line 328
    iget p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbarColor:I

    iput p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->currentToolbarColor:I

    .line 329
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->toolbarColor:I

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/helpers/UIHelper;->colorizeToolbar(Landroid/support/v7/widget/Toolbar;ILandroid/app/Activity;)V

    .line 332
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 334
    iget-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getPaddingRight()I

    move-result p3

    .line 337
    iget v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    div-int/2addr p1, v0

    sub-int/2addr v1, p1

    .line 338
    iget v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceImageHeight:I

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getPaddingTop()I

    move-result p1

    sub-int/2addr v2, p1

    iget p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->actionBarSize:I

    add-int/2addr v2, p1

    int-to-float p1, v2

    iget v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->actionBarSize:I

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 339
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v2, v3

    int-to-float v0, v2

    int-to-float v1, v1

    .line 5042
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 338
    iput p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationY:F

    .line 341
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_3

    .line 344
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 345
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabMargin:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 346
    iget p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationY:F

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 347
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    goto :goto_1

    .line 349
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabMargin:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    iput p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationX:I

    .line 351
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    iget p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationX:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    .line 352
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    iget p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationY:F

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 356
    :goto_1
    iget p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->fabTranslationY:F

    iget p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->flexibleSpaceShowFabOffset:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 357
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->hideFab()V

    return-void

    .line 359
    :cond_4
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->showFab()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 533
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 537
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const p1, 0x7f100044

    .line 539
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getRawPath(I)Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 542
    iget-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 544
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 545
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 546
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 547
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 549
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 561
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 562
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 564
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public onUrlClick(Landroid/view/View;)V
    .locals 3

    .line 221
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rocketbank"

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->titleURL:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/Utils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u0421\u0441\u044b\u043b\u043a\u0430 \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0430 \u0432 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430"

    const/4 v1, -0x1

    .line 222
    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "KEY_INVITED_FRIENDS"

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitations:Ljava/util/ArrayList;

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 184
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->requestURL()V

    .line 186
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->overlayView:Landroid/view/View;

    new-instance p2, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$4;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$4;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshDataSources()V
    .locals 2

    .line 292
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getFriendsInviteAdapter()Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->invitations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->setInvitations(Ljava/util/List;)V

    .line 293
    invoke-super {p0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshDataSources()V

    return-void
.end method

.method protected updateSections()V
    .locals 4

    .line 439
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->nothingFoundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->nothingFoundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f110327

    .line 447
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->searchQuery:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->nothingFoundTextView:Landroid/widget/TextView;

    const v1, 0x7f11017f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 458
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getFriendsInviteAdapter()Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->getInvitationsCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 462
    new-instance v1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    const v2, 0x7f110247

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getFriendsInviteAdapter()Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->getInvitationsCount()I

    move-result v1

    add-int/2addr v3, v1

    .line 465
    :cond_3
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getFriendsCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    new-instance v1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    const v2, 0x7f110328

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getFriendsCount()I

    .line 469
    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->adapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V

    return-void
.end method
