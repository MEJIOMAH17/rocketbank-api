.class public abstract Lru/rocketbank/r2d2/activities/StatusActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "StatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/StatusActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">",
        "Lru/rocketbank/r2d2/activities/SecuredActivity;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

.field private static final KEY_TITLE:Ljava/lang/String; = "KEY_TITLE"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final contentView:I

.field private subscription:Lrx/Subscription;

.field private final successStatusText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/StatusActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/StatusActivity;->Companion:Lru/rocketbank/r2d2/activities/StatusActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    const v0, 0x7f0c0062

    .line 49
    iput v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->contentView:I

    const v0, 0x7f11032e

    .line 91
    iput v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->successStatusText:I

    return-void
.end method

.method public static final synthetic access$getKEY_TITLE$cp()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/activities/StatusActivity;->KEY_TITLE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onEndAnimation(Lru/rocketbank/r2d2/activities/StatusActivity;ZLru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/activities/StatusActivity;->onEndAnimation(ZLru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method

.method public static final synthetic access$onSubscribe(Lru/rocketbank/r2d2/activities/StatusActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->onSubscribe()V

    return-void
.end method

.method private final enterReveal(Landroid/view/View;)V
    .locals 10

    .line 169
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    const-string v1, "rocketLoader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 170
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x2

    .line 172
    new-array v2, v1, [I

    .line 173
    sget v3, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/RocketLoader;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 176
    aget v4, v2, v3

    div-int/2addr v0, v1

    add-int/2addr v4, v0

    const/4 v1, 0x1

    .line 178
    aget v1, v2, v1

    sget v2, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    const-string v5, "toolbar"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getStatusBarHeight()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v6, v2

    int-to-double v8, v5

    .line 183
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v2, v5

    .line 185
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    int-to-float v0, v0

    .line 186
    invoke-static {p1, v4, v1, v0, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    const-string v0, "animator"

    .line 187
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    .line 188
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 189
    invoke-virtual {p1}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method private final onEndAnimation(ZLru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->onFail()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 128
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/activities/StatusActivity;->onSuccess(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    .line 131
    :goto_0
    :try_start_0
    sget p1, Lru/rocketbank/r2d2/R$id;->backgroundView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "backgroundView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->enterReveal(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 133
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final onSubscribe()V
    .locals 3

    .line 67
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    .line 68
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonTop:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "buttonTop"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 69
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonBottom:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v2, "buttonBottom"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 70
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method private final unsubscribe()V
    .locals 1

    .line 226
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->subscription:Lrx/Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->subscription:Lrx/Subscription;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->subscription:Lrx/Subscription;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final execute()V
    .locals 3

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->subscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->subscription:Lrx/Subscription;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getOperation()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 56
    new-instance v1, Lru/rocketbank/r2d2/activities/StatusActivity$execute$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/StatusActivity$execute$1;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    check-cast v1, Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnSubscribe(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    .line 57
    new-instance v1, Lru/rocketbank/r2d2/activities/StatusActivity$execute$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/StatusActivity$execute$2;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    check-cast v1, Lrx/functions/Action1;

    .line 63
    new-instance v2, Lru/rocketbank/r2d2/activities/StatusActivity$execute$3;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/activities/StatusActivity$execute$3;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    check-cast v2, Lrx/functions/Action1;

    .line 57
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->subscription:Lrx/Subscription;

    return-void
.end method

.method public final exitReveal$App_prodRelease(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    const-string v1, "rocketLoader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 194
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x2

    .line 197
    new-array v2, v1, [I

    .line 198
    sget v3, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/RocketLoader;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 201
    aget v3, v2, v3

    div-int/2addr v0, v1

    add-int/2addr v3, v0

    const/4 v1, 0x1

    .line 202
    aget v1, v2, v1

    sget v2, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    const-string v4, "toolbar"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 207
    invoke-static {p1, v3, v1, v0, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    .line 210
    new-instance v1, Lru/rocketbank/r2d2/activities/StatusActivity$exitReveal$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/activities/StatusActivity$exitReveal$1;-><init>(Landroid/view/View;)V

    check-cast v1, Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 217
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method protected getContentView()I
    .locals 1

    .line 49
    iget v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->contentView:I

    return v0
.end method

.method protected abstract getOperation()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected getSuccessStatusText()I
    .locals 1

    .line 91
    iget v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity;->successStatusText:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 32
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->setContentView(I)V

    .line 35
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, "toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/activities/StatusActivity;->KEY_TITLE:Ljava/lang/String;

    const v3, 0x7f110061

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 39
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    if-nez p1, :cond_3

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->execute()V

    return-void

    :cond_3
    const/4 p1, -0x1

    .line 44
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->unsubscribe()V

    .line 222
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onDestroy()V

    return-void
.end method

.method protected final onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->unsubscribe()V

    .line 95
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_5

    .line 96
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    new-instance v1, Lru/rocketbank/r2d2/activities/StatusActivity$onError$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/StatusActivity$onError$1;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    check-cast v1, Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader;->setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V

    .line 102
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->hasError()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    .line 104
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/StatusActivity;->setResult(I)V

    .line 106
    :cond_0
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result v0

    const v2, 0x7f110439

    if-eqz v0, :cond_1

    .line 107
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void

    .line 109
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 110
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/ResponseData;->getShowIt()Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_4

    .line 111
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    .line 112
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 114
    :cond_4
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void

    :cond_5
    const/4 v0, -0x1

    .line 118
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->setResult(I)V

    .line 119
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 120
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f1104c5

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void
.end method

.method protected final onFail()V
    .locals 3

    .line 149
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 150
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonTop:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v2, "buttonTop"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 151
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonTop:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const v1, 0x7f1100c6

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setText(I)V

    .line 152
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonTop:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v1, Lru/rocketbank/r2d2/activities/StatusActivity$onFail$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/StatusActivity$onFail$1;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonBottom:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "buttonBottom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 154
    sget v0, Lru/rocketbank/r2d2/R$id;->buttonBottom:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v1, Lru/rocketbank/r2d2/activities/StatusActivity$onFail$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/StatusActivity$onFail$2;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lru/rocketbank/r2d2/R$id;->backgroundView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, -0xb191a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method protected onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "genericRequestResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    new-instance v1, Lru/rocketbank/r2d2/activities/StatusActivity$onNext$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity$onNext$1;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    check-cast v1, Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader;->setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V

    .line 81
    sget v0, Lru/rocketbank/r2d2/R$id;->rocketLoader:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setSuccess()V

    const/4 v0, -0x1

    .line 82
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->setResult(I)V

    .line 83
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->unsubscribe()V

    .line 84
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    sget v0, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 87
    :cond_1
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->getSuccessStatusText()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void
.end method

.method protected final onRetry()V
    .locals 2

    .line 140
    :try_start_0
    sget v0, Lru/rocketbank/r2d2/R$id;->backgroundView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "backgroundView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->exitReveal$App_prodRelease(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;->execute()V

    return-void
.end method

.method protected onSuccess(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "genericRequestResponseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget p1, Lru/rocketbank/r2d2/R$id;->textViewStatus:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "textViewStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 160
    sget p1, Lru/rocketbank/r2d2/R$id;->buttonTop:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    const-string v1, "buttonTop"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 161
    sget p1, Lru/rocketbank/r2d2/R$id;->buttonTop:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    const v0, 0x7f110167

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setText(I)V

    .line 162
    sget p1, Lru/rocketbank/r2d2/R$id;->buttonTop:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v0, Lru/rocketbank/r2d2/activities/StatusActivity$onSuccess$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/StatusActivity$onSuccess$1;-><init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget p1, Lru/rocketbank/r2d2/R$id;->buttonBottom:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketButton;

    const-string v0, "buttonBottom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketButton;->setVisibility(I)V

    .line 164
    sget p1, Lru/rocketbank/r2d2/R$id;->backgroundView:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, -0x150e15

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
