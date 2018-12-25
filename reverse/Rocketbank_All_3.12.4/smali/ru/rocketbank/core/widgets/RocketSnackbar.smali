.class public final Lru/rocketbank/core/widgets/RocketSnackbar;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;,
        Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;,
        Lru/rocketbank/core/widgets/RocketSnackbar$Callback;,
        Lru/rocketbank/core/widgets/RocketSnackbar$ThemeUtils;
    }
.end annotation


# static fields
.field static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private final mManagerCallback:Lru/rocketbank/core/widgets/SnackbarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field private final mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lru/rocketbank/core/widgets/RocketSnackbar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/widgets/RocketSnackbar$1;

    invoke-direct {v2}, Lru/rocketbank/core/widgets/RocketSnackbar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lru/rocketbank/core/widgets/RocketSnackbar;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Lru/rocketbank/core/widgets/RocketSnackbar$3;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$3;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mManagerCallback:Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    .line 205
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mTargetParent:Landroid/view/ViewGroup;

    .line 206
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mContext:Landroid/content/Context;

    .line 208
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketSnackbar$ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 210
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mTargetParent:Landroid/view/ViewGroup;

    const v1, 0x7f0c0095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/widgets/RocketSnackbar;I)V
    .locals 1

    .line 6469
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object v0

    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mManagerCallback:Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/core/widgets/SnackbarManager;->dismiss(Lru/rocketbank/core/widgets/SnackbarManager$Callback;I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 74
    sget-object v0, Lru/rocketbank/core/widgets/RocketSnackbar;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/SnackbarManager$Callback;
    .locals 0

    .line 74
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mManagerCallback:Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    return-object p0
.end method

.method static synthetic access$300$aabb9b3(Lru/rocketbank/core/widgets/RocketSnackbar;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->onViewHidden$13462e()V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/core/widgets/RocketSnackbar;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->animateViewIn()V

    return-void
.end method

.method static synthetic access$500(Lru/rocketbank/core/widgets/RocketSnackbar;)Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    return-object p0
.end method

.method static synthetic access$600$2cdccd1c()Lru/rocketbank/core/widgets/RocketSnackbar$Callback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private animateViewIn()V
    .locals 4

    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 584
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 585
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    .line 586
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v3, Lru/rocketbank/core/widgets/RocketSnackbar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 587
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 588
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$7;

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$7;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    .line 589
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f01000e

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 607
    sget-object v3, Lru/rocketbank/core/widgets/RocketSnackbar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 608
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 609
    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$8;

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$8;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 624
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 279
    :cond_0
    instance-of v2, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 281
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 282
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    .line 286
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 289
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 296
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method public static make(Landroid/view/View;II)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lru/rocketbank/core/widgets/RocketSnackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lru/rocketbank/core/widgets/RocketSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    .line 234
    new-instance v0, Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/RocketSnackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 1408
    iget-object p0, v0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 1409
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    iput p2, v0, Lru/rocketbank/core/widgets/RocketSnackbar;->mDuration:I

    return-object v0
.end method

.method public static make$2c974f84(Landroid/view/View;Ljava/lang/CharSequence;)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 3

    .line 243
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lru/rocketbank/core/manager/TypefaceManager;->getTypeface(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 245
    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar;

    invoke-static {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/RocketSnackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 2408
    iget-object p0, v1, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 2409
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 2432
    iput p0, v1, Lru/rocketbank/core/widgets/RocketSnackbar;->mDuration:I

    .line 3382
    iget-object p0, v1, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 3383
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3385
    iget-object p0, v1, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object p0

    .line 3386
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v1
.end method

.method private onViewHidden$13462e()V
    .locals 2

    .line 675
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mManagerCallback:Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/SnackbarManager;->onDismissed(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    .line 681
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 682
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 683
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final hideView(I)V
    .locals 4

    .line 666
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4691
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4693
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4694
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 4695
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 4697
    instance-of v1, v0, Landroid/support/design/widget/SwipeDismissBehavior;

    if-eqz v1, :cond_0

    .line 4698
    check-cast v0, Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->getDragState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    .line 5629
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const-wide/16 v2, 0xfa

    if-lt v0, v1, :cond_2

    .line 5630
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    .line 5631
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/widgets/RocketSnackbar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 5632
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 5633
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$9;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/widgets/RocketSnackbar$9;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;I)V

    .line 5634
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 5644
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void

    .line 5646
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5647
    sget-object v1, Lru/rocketbank/core/widgets/RocketSnackbar;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5648
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5649
    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$10;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/widgets/RocketSnackbar$10;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5661
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 667
    :cond_3
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->onViewHidden$13462e()V

    return-void
.end method

.method public final isShownOrQueued()Z
    .locals 2

    .line 493
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mManagerCallback:Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/SnackbarManager;->isCurrentOrNext(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public final setAction(ILandroid/view/View$OnClickListener;)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 2

    .line 312
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4323
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 4325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4329
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4330
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4331
    new-instance p1, Lru/rocketbank/core/widgets/RocketSnackbar$2;

    invoke-direct {p1, p0, p2}, Lru/rocketbank/core/widgets/RocketSnackbar$2;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 4326
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 4327
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object p0
.end method

.method public final setDuration$63dcf297()Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    const/4 v0, -0x2

    .line 432
    iput v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mDuration:I

    return-object p0
.end method

.method public final setTextColor(I)Lru/rocketbank/core/widgets/RocketSnackbar;
    .locals 1

    .line 359
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 360
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public final show()V
    .locals 3

    .line 458
    invoke-static {}, Lru/rocketbank/core/widgets/SnackbarManager;->getInstance()Lru/rocketbank/core/widgets/SnackbarManager;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mDuration:I

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mManagerCallback:Lru/rocketbank/core/widgets/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/widgets/SnackbarManager;->show(ILru/rocketbank/core/widgets/SnackbarManager$Callback;)V

    return-void
.end method

.method final showView()V
    .locals 3

    .line 509
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 512
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 515
    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    const v2, 0x3dcccccd    # 0.1f

    .line 516
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;->setStartAlphaSwipeDistance(F)V

    const v2, 0x3f19999a    # 0.6f

    .line 517
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;->setEndAlphaSwipeDistance(F)V

    const/4 v2, 0x0

    .line 518
    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;->setSwipeDirection(I)V

    .line 519
    new-instance v2, Lru/rocketbank/core/widgets/RocketSnackbar$4;

    invoke-direct {v2, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$4;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketSnackbar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 540
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$5;

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$5;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->setOnAttachStateChangeListener(Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnAttachStateChangeListener;)V

    .line 567
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketSnackbar;->animateViewIn()V

    return-void

    .line 572
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSnackbar;->mView:Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;

    new-instance v1, Lru/rocketbank/core/widgets/RocketSnackbar$6;

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/RocketSnackbar$6;-><init>(Lru/rocketbank/core/widgets/RocketSnackbar;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout;->setOnLayoutChangeListener(Lru/rocketbank/core/widgets/RocketSnackbar$SnackbarLayout$OnLayoutChangeListener;)V

    return-void
.end method
