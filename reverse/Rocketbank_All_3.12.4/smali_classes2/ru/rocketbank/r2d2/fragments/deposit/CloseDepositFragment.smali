.class public Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "CloseDepositFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;


# static fields
.field private static final DEPOSIT:Ljava/lang/String; = "DEPOSIT"

.field private static final TAG:Ljava/lang/String; = "CloseDeposit"


# instance fields
.field backgroundView:Landroid/view/View;

.field private canBeClosed:Z

.field closeView:Lru/rocketbank/core/widgets/RocketTextView;

.field private deposit:Lru/rocketbank/core/model/DepositModel;

.field depositApi:Lru/rocketbank/core/network/api/DepositApi;

.field finishView:Landroid/support/v7/widget/CardView;

.field private isError:Z

.field readyView:Lru/rocketbank/core/widgets/RocketTextView;

.field rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

.field statusView:Lru/rocketbank/core/widgets/RocketTextView;

.field private toolbarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->canBeClosed:Z

    return-void
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->isError:Z

    return p1
.end method

.method private closeDeposit()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->createCloseDepositObservable()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private closeFragment()V
    .locals 1

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->canBeClosed:Z

    .line 244
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 245
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->onBackPressed()V

    return-void
.end method

.method private createCloseDepositObservable()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/response/DepositResponse;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->depositApi:Lru/rocketbank/core/network/api/DepositApi;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    .line 199
    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketDepositModel;->getPermalink()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v2

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lru/rocketbank/core/network/api/DepositApi;->close(Ljava/lang/String;JLjava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 200
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private enterReveal(Landroid/view/View;)V
    .locals 10

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x2

    .line 122
    new-array v2, v1, [I

    .line 123
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/RocketLoader;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 126
    aget v4, v2, v3

    div-int/2addr v0, v1

    add-int/2addr v4, v0

    const/4 v1, 0x1

    .line 127
    aget v1, v2, v1

    iget v2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->toolbarHeight:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v6, v2

    int-to-double v8, v5

    .line 132
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v2, v5

    .line 134
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    int-to-float v0, v0

    .line 135
    invoke-static {p1, v4, v1, v0, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    .line 136
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    .line 137
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 138
    invoke-virtual {p1}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method public static newInstance(Lru/rocketbank/core/model/DepositModel;)Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;
    .locals 3

    .line 92
    new-instance v0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;-><init>()V

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEPOSIT"

    .line 94
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onReady()V
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->canBeClosed:Z

    .line 238
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 239
    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showFeed()V

    return-void
.end method

.method private onRetry()V
    .locals 2

    .line 188
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->finishView:Landroid/support/v7/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->backgroundView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->exitReveal(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    .line 194
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeDeposit()V

    return-void
.end method


# virtual methods
.method public animationEnd(Z)V
    .locals 3

    .line 103
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->isError:Z

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->finishView:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-boolean v2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->isError:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->readyView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->isError:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1103d5

    goto :goto_1

    :cond_1
    const v1, 0x7f1103ab

    :goto_1
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    if-nez p1, :cond_2

    .line 110
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->backgroundView:Landroid/view/View;

    const v0, -0x150e15

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 112
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->backgroundView:Landroid/view/View;

    const v0, -0xb191a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    :goto_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->backgroundView:Landroid/view/View;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->enterReveal(Landroid/view/View;)V

    return-void
.end method

.method exitReveal(Landroid/view/View;)V
    .locals 4

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x2

    .line 146
    new-array v2, v1, [I

    .line 147
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/RocketLoader;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 150
    aget v3, v2, v3

    div-int/2addr v0, v1

    add-int/2addr v3, v0

    const/4 v1, 0x1

    .line 151
    aget v1, v2, v1

    iget v2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->toolbarHeight:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 156
    invoke-static {p1, v3, v1, v0, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    .line 159
    new-instance v1, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 167
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method public isCanPopBack()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->canBeClosed:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900df

    if-eq p1, v0, :cond_2

    const v0, 0x7f09017b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->isError:Z

    if-eqz p1, :cond_1

    .line 179
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->onRetry()V

    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->onReady()V

    :goto_0
    return-void

    .line 174
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeFragment()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00ce

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090069

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->backgroundView:Landroid/view/View;

    const p2, 0x7f090225

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketLoader;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    const p2, 0x7f09017b

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/CardView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->finishView:Landroid/support/v7/widget/CardView;

    const p2, 0x7f0900df

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f0902c7

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->readyView:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090359

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->statusView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader;->setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V

    .line 88
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDepositApi()Lru/rocketbank/core/network/api/DepositApi;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->depositApi:Lru/rocketbank/core/network/api/DepositApi;

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "DEPOSIT"

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/DepositModel;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->deposit:Lru/rocketbank/core/model/DepositModel;

    const p2, 0x7f0903d8

    .line 70
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->setupDefaultToolbar(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->toolbarHeight:I

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {p1, p0}, Lru/rocketbank/core/widgets/RocketLoader;->setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V

    .line 78
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->finishView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, p0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->closeDeposit()V

    return-void
.end method
