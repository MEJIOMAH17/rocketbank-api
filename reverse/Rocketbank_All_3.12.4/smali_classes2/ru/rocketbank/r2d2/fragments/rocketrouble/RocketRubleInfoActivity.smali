.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "RocketRubleInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;

.field private static final KEY_REVEAL:Ljava/lang/String; = "reveal"

.field private static final KEY_X:Ljava/lang/String; = "x"

.field private static final KEY_Y:Ljava/lang/String; = "y"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activityInviteFriendInfoBinding:Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

.field private animator:Lio/codetail/animation/SupportAnimator;

.field private mContentView:Landroid/view/View;

.field private reveal:Z

.field public rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private subscription:Lrx/Subscription;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$createAnimator(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnimator$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-object p0
.end method

.method public static final synthetic access$getKEY_REVEAL$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->KEY_REVEAL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_X$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->KEY_X:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_Y$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->KEY_Y:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMContentView$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$refreshRocketScreen(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->refreshRocketScreen(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$reverseAnimation(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->reverseAnimation()V

    return-void
.end method

.method public static final synthetic access$setAnimator$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;Lio/codetail/animation/SupportAnimator;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-void
.end method

.method public static final synthetic access$setMContentView$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;Landroid/view/View;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->mContentView:Landroid/view/View;

    return-void
.end method

.method private final createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 6

    .line 214
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->KEY_X:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 215
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->KEY_Y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 220
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 222
    invoke-static {p1, v0, v1, v3, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    const-string v0, "animator"

    .line 223
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 224
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    return-object p1
.end method

.method private final refreshRocketScreen(Ljava/lang/String;)V
    .locals 7

    const-string v0, "1"

    const-string v1, "odin"

    .line 102
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f1103db

    if-nez v1, :cond_1

    const-string v0, "poltora"

    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "1.5"

    move p1, v3

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    const v4, 0x7f110303

    const-string v0, "1.5"

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v2

    move v1, v3

    .line 113
    :goto_1
    sget v5, Lru/rocketbank/r2d2/R$id;->inLovelyPlaces:I

    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const-string v6, "inLovelyPlaces"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    :goto_2
    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    sget p1, Lru/rocketbank/r2d2/R$id;->head:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v5, "head"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v4, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget p1, Lru/rocketbank/r2d2/R$id;->head:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 116
    sget p1, Lru/rocketbank/r2d2/R$id;->rocket:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz v1, :cond_3

    const v0, 0x7f1103e6

    goto :goto_3

    :cond_3
    const v0, 0x7f1103e7

    :goto_3
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void
.end method

.method private final reverseAnimation()V
    .locals 3

    .line 175
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->reveal:Z

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->finish()V

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    .line 182
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->reverse()Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    new-instance v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$reverseAnimation$1;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V

    check-cast v1, Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 208
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 210
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void

    .line 204
    :cond_9
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->animator:Lio/codetail/animation/SupportAnimator;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->cancel()V

    .line 205
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getRocketAPI()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 2

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_0

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 0

    .line 166
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->reverseAnimation()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 37
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c0057

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->activityInviteFriendInfoBinding:Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    .line 41
    sget v0, Lru/rocketbank/r2d2/R$id;->onetwotrip:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    const-string v1, "onetwotrip"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 42
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketrubles:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    const-string v2, "rocketrubles"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 43
    sget v0, Lru/rocketbank/r2d2/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_0

    const-string v2, "rocketAPI"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->getRocketRoublesInfo()Lrx/Observable;

    move-result-object v0

    .line 46
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 47
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 48
    new-instance v2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V

    check-cast v2, Lrx/Subscriber;

    invoke-virtual {v0, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->subscription:Lrx/Subscription;

    .line 82
    sget v0, Lru/rocketbank/r2d2/R$id;->closeButton:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    new-instance v2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090197

    .line 84
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->mContentView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->KEY_REVEAL:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->reveal:Z

    if-nez p1, :cond_2

    .line 87
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->reveal:Z

    if-eqz p1, :cond_2

    .line 88
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->mContentView:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$onCreate$3;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 162
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 158
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->reverseAnimation()V

    const/4 p1, 0x0

    return p1
.end method

.method protected final onPause()V
    .locals 1

    .line 170
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->subscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->unsubscribe(Lrx/Subscription;)V

    return-void
.end method

.method public final setRocketAPI(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method
