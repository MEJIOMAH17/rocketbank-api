.class public final Lru/rocketbank/r2d2/activities/ProvidersActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ProvidersActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/ProvidersActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/ProvidersActivity$Companion;

.field private static final KEY_REVEAL:Ljava/lang/String; = "reveal"

.field private static final KEY_X:Ljava/lang/String; = "x"

.field private static final KEY_Y:Ljava/lang/String; = "y"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animator:Lio/codetail/animation/SupportAnimator;

.field private isReveal:Z

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/ProvidersActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/ProvidersActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->Companion:Lru/rocketbank/r2d2/activities/ProvidersActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$createAnimator(Lru/rocketbank/r2d2/activities/ProvidersActivity;Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnimator$p(Lru/rocketbank/r2d2/activities/ProvidersActivity;)Lio/codetail/animation/SupportAnimator;
    .locals 0

    .line 18
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-object p0
.end method

.method public static final synthetic access$getKEY_REVEAL$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->KEY_REVEAL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_X$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->KEY_X:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_Y$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->KEY_Y:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRootView$p(Lru/rocketbank/r2d2/activities/ProvidersActivity;)Landroid/view/View;
    .locals 1

    .line 18
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->rootView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setAnimator$p(Lru/rocketbank/r2d2/activities/ProvidersActivity;Lio/codetail/animation/SupportAnimator;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->animator:Lio/codetail/animation/SupportAnimator;

    return-void
.end method

.method public static final synthetic access$setRootView$p(Lru/rocketbank/r2d2/activities/ProvidersActivity;Landroid/view/View;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->rootView:Landroid/view/View;

    return-void
.end method

.method private final createAnimator(Landroid/view/View;)Lio/codetail/animation/SupportAnimator;
    .locals 6

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/ProvidersActivity;->KEY_X:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/activities/ProvidersActivity;->KEY_Y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 50
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 52
    invoke-static {p1, v0, v1, v3, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    const-string v0, "animator"

    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 54
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    return-object p1
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 27
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c004f

    .line 28
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->setContentView(I)V

    const v0, 0x7f0903d8

    .line 29
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->setupDefaultToolbar(I)V

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/ProvidersActivity;->KEY_REVEAL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->isReveal:Z

    const v0, 0x7f0902fb

    .line 32
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/ProvidersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->rootView:Landroid/view/View;

    if-nez p1, :cond_2

    .line 34
    iget-boolean p1, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->isReveal:Z

    if-eqz p1, :cond_2

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ProvidersActivity;->rootView:Landroid/view/View;

    if-nez p1, :cond_1

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/ProvidersActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/activities/ProvidersActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
