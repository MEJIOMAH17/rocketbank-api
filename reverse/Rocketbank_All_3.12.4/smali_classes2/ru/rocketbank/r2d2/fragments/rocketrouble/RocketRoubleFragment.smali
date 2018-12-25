.class public final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "RocketRoubleFragment.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;

.field private static final DELIMITER_AVALIABLE:I = 0x0

.field private static final DELIMITER_DYNAMIC:I = 0x2

.field private static final DELIMITER_HEADER:I = 0x4

.field private static final DELIMITER_HISTORY:I = 0x3

.field private static final DELIMITER_SHOP:I = 0x6

.field private static final DELIMITER_STATISTICS:I = 0x1

.field private static final STATISTICS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "RocketRouble"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private appBarHeight:I

.field public appBarLayout:Landroid/widget/FrameLayout;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private balance:D

.field private barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

.field public cardOverlay:Landroid/view/View;

.field private currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field private fabMargin:I

.field private fabTranslationX:I

.field private fabTranslationY:F

.field public feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private flexibleSpaceImageHeight:I

.field private flexibleSpaceShowFabOffset:I

.field public floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field public headerOverlay:Landroid/view/View;

.field private isNeedShowFloating:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field public money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field private moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private paralaxSize:I

.field public realToolbar:Landroid/support/v7/widget/Toolbar;

.field private rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field public rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

.field private rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

.field private rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

.field private rocketSubscription:Lrx/Subscription;

.field public rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarHeight:I

.field private userModel:Lru/rocketbank/core/model/UserModel;

.field public videoView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$fillAdapterWithData(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fillAdapterWithData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V

    return-void
.end method

.method public static final synthetic access$getBalance$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)D
    .locals 2

    .line 52
    iget-wide v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->balance:D

    return-wide v0
.end method

.method public static final synthetic access$getBarChartAdapter$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;
    .locals 1

    .line 52
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    if-nez p0, :cond_0

    const-string v0, "barChartAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDELIMITER_AVALIABLE$cp()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_AVALIABLE:I

    return v0
.end method

.method public static final synthetic access$getDELIMITER_DYNAMIC$cp()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_DYNAMIC:I

    return v0
.end method

.method public static final synthetic access$getDELIMITER_HEADER$cp()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_HEADER:I

    return v0
.end method

.method public static final synthetic access$getDELIMITER_HISTORY$cp()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_HISTORY:I

    return v0
.end method

.method public static final synthetic access$getDELIMITER_SHOP$cp()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_SHOP:I

    return v0
.end method

.method public static final synthetic access$getDELIMITER_STATISTICS$cp()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_STATISTICS:I

    return v0
.end method

.method public static final synthetic access$getRocketRoubleModel$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;
    .locals 1

    .line 52
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    if-nez p0, :cond_0

    const-string v0, "rocketRoubleModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSTATISTICS$cp()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->STATISTICS:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isNeedShowFloating$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->isNeedShowFloating:Z

    return p0
.end method

.method public static final synthetic access$refreshUserData(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->refreshUserData()V

    return-void
.end method

.method public static final synthetic access$setBalance$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;D)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->balance:D

    return-void
.end method

.method public static final synthetic access$setBarChartAdapter$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    return-void
.end method

.method public static final synthetic access$setNeedShowFloating$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->isNeedShowFloating:Z

    return-void
.end method

.method public static final synthetic access$setRocketRoubleModel$p(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    return-void
.end method

.method public static final synthetic access$showBalance(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->showBalance()V

    return-void
.end method

.method private final enterReveal(Landroid/view/View;)V
    .locals 6

    .line 394
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationX:I

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_0

    const-string v2, "floatingActionButton"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_1

    const-string v3, "floatingActionButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 395
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationY:F

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_2

    const-string v3, "floatingActionButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v3, :cond_3

    const-string v4, "floatingActionButton"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v2

    int-to-double v2, v3

    .line 400
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 402
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v3, :cond_4

    const-string v4, "floatingActionButton"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {p1, v0, v1, v3, v2}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object p1

    const-string v0, "animator"

    .line 404
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lio/codetail/animation/SupportAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 405
    invoke-virtual {p1, v0, v1}, Lio/codetail/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 406
    invoke-virtual {p1}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method private final fillAdapterWithData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 439
    new-instance v2, Lru/rocketbank/core/model/operation/DelimiterOperation;

    sget v3, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_AVALIABLE:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lru/rocketbank/core/model/operation/DelimiterOperation;-><init>(II)V

    .line 440
    new-instance v3, Lru/rocketbank/core/model/operation/DelimiterOperation;

    sget v5, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_SHOP:I

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lru/rocketbank/core/model/operation/DelimiterOperation;-><init>(II)V

    .line 441
    new-instance v5, Lru/rocketbank/core/model/operation/DelimiterOperation;

    sget v6, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_STATISTICS:I

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lru/rocketbank/core/model/operation/DelimiterOperation;-><init>(II)V

    .line 442
    new-instance v6, Lru/rocketbank/core/model/operation/DelimiterOperation;

    sget v8, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_DYNAMIC:I

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Lru/rocketbank/core/model/operation/DelimiterOperation;-><init>(II)V

    .line 443
    new-instance v8, Lru/rocketbank/core/model/operation/DelimiterOperation;

    sget v9, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_HISTORY:I

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10}, Lru/rocketbank/core/model/operation/DelimiterOperation;-><init>(II)V

    .line 444
    new-instance v9, Lru/rocketbank/core/model/operation/DelimiterOperation;

    sget v10, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->DELIMITER_HEADER:I

    const/4 v11, 0x5

    invoke-direct {v9, v10, v11}, Lru/rocketbank/core/model/operation/DelimiterOperation;-><init>(II)V

    .line 446
    iget-object v10, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v10, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v10}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->clear()V

    .line 447
    iget-object v10, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v10, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v10}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->clearTop()V

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    .line 451
    new-instance v11, Lru/rocketbank/core/model/operation/StatisticsOperation;

    sget v12, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->STATISTICS:I

    const/4 v13, 0x7

    move-object/from16 v14, p4

    invoke-direct {v11, v12, v13, v1, v14}, Lru/rocketbank/core/model/operation/StatisticsOperation;-><init>(IILjava/util/List;Ljava/lang/Float;)V

    goto :goto_0

    :cond_2
    move-object v11, v10

    .line 454
    :goto_0
    new-instance v12, Lru/rocketbank/core/model/operation/BarOperation;

    invoke-direct {v12}, Lru/rocketbank/core/model/operation/BarOperation;-><init>()V

    .line 456
    iget-object v13, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v13, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    new-instance v14, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v15, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v15}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_HEADER()I

    move-result v15

    check-cast v9, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v14, v15, v9}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v13, v14}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    .line 458
    iget-object v9, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v9, :cond_4

    const-string v13, "authorization"

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v9}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v9

    .line 10043
    sget-object v13, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 11029
    invoke-virtual {v9}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v9

    .line 10043
    invoke-virtual {v13, v9}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v9

    .line 458
    sget-object v13, Lru/rocketbank/core/model/enums/Cobrand;->ONETWOTRIP:Lru/rocketbank/core/model/enums/Cobrand;

    if-eq v9, v13, :cond_9

    .line 459
    iget-object v9, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v9, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    new-instance v13, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v14, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v14}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_DELIMITER()I

    move-result v14

    check-cast v2, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v13, v14, v2}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v9, v13}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    if-eqz p2, :cond_9

    .line 461
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 462
    iget-object v14, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v14, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    new-instance v15, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v4}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_ACTUAL()I

    move-result v4

    check-cast v13, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v15, v4, v13}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v14, v15}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    const/4 v4, 0x0

    goto :goto_1

    .line 465
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 466
    iget-object v2, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    new-instance v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v9, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v9}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_NO_COMPENSATION()I

    move-result v9

    invoke-direct {v4, v9, v10, v7, v10}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v2, v4}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    .line 471
    :cond_9
    iget-object v2, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lru/rocketbank/core/model/UserModel;->isShopWorks()Z

    move-result v4

    move/from16 v16, v4

    goto :goto_2

    :cond_a
    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_d

    .line 472
    iget-object v2, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v2, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    new-instance v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v9, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v9}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_DELIMITER()I

    move-result v9

    check-cast v3, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v4, v9, v3}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v2, v4}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    .line 473
    iget-object v2, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v2, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    new-instance v3, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v4}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_ROCKETSHOP()I

    move-result v4

    invoke-direct {v3, v4, v10, v7, v10}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;ILkotlin/jvm/internal/Ref;)V

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    .line 476
    :cond_d
    iget-object v2, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v2, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    new-instance v3, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v4}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_DELIMITER()I

    move-result v4

    check-cast v5, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v3, v4, v5}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    if-eqz v1, :cond_10

    .line 478
    iget-object v2, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v2, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    new-instance v3, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v4}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_STATISTICS()I

    move-result v4

    check-cast v11, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v3, v4, v11}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    .line 481
    :cond_10
    iget-object v2, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v2, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    new-instance v3, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v4}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_DELIMITER()I

    move-result v4

    check-cast v6, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v3, v4, v6}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    if-eqz v1, :cond_13

    .line 482
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 483
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v1, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    new-instance v2, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v3, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v3}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_BAR()I

    move-result v3

    check-cast v12, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v2, v3, v12}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    .line 486
    :cond_13
    iget-object v1, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v1, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    new-instance v2, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v3, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v3}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_DELIMITER()I

    move-result v3

    check-cast v8, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v2, v3, v8}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addTopItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    if-eqz p1, :cond_16

    .line 489
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 490
    iget-object v3, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v3, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_15
    new-instance v4, Lru/rocketbank/core/model/RocketRubleHistoryOperation;

    sget-object v5, Lru/rocketbank/core/model/RocketRubleHistoryOperation;->Companion:Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;

    invoke-virtual {v5}, Lru/rocketbank/core/model/RocketRubleHistoryOperation$Companion;->getOPERATION_HISTORY()I

    move-result v5

    check-cast v2, Lru/rocketbank/core/model/AbstractOperation;

    invoke-direct {v4, v5, v2}, Lru/rocketbank/core/model/RocketRubleHistoryOperation;-><init>(ILru/rocketbank/core/model/AbstractOperation;)V

    invoke-virtual {v3, v4}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->addItem(Lru/rocketbank/core/model/RocketRubleHistoryOperation;)V

    goto :goto_3

    :cond_16
    return-void
.end method

.method private final getRawPath(I)Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

.method private final moveFloatingButton(I)V
    .locals 7

    .line 306
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "feedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getWidth()I

    move-result v0

    .line 308
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_1

    const-string v2, "floatingActionButton"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 309
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_2

    const-string v3, "floatingActionButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 310
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v3, :cond_3

    const-string v4, "floatingActionButton"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getPaddingRight()I

    move-result v3

    .line 313
    iget v4, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->flexibleSpaceImageHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v5, :cond_4

    const-string v6, "floatingActionButton"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarHeight:I

    add-int/2addr v4, v5

    neg-int p1, p1

    .line 314
    iget v5, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->flexibleSpaceImageHeight:I

    add-int/2addr p1, v5

    sub-int/2addr p1, v1

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_5

    const-string v5, "floatingActionButton"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarHeight:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    .line 315
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarHeight:I

    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v5, :cond_6

    const-string v6, "floatingActionButton"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v4, v4

    .line 10042
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 314
    iput p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationY:F

    .line 317
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge p1, v1, :cond_c

    .line 320
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_7

    const-string v0, "floatingActionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 321
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_9

    const-string v1, "feedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getWidth()I

    move-result v0

    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_a

    const-string v2, "floatingActionButton"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 322
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationY:F

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 323
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_b

    const-string v0, "floatingActionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    goto :goto_0

    .line 325
    :cond_c
    iget p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabMargin:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    iput v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationX:I

    .line 327
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_d

    const-string v0, "floatingActionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    .line 328
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_e

    const-string v0, "floatingActionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationY:F

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 331
    :goto_0
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->isNeedShowFloating:Z

    if-eqz p1, :cond_12

    .line 333
    iget p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationY:F

    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->flexibleSpaceShowFabOffset:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_10

    .line 334
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_f

    const-string v0, "floatingActionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void

    .line 337
    :cond_10
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_11

    const-string v0, "floatingActionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    return-void

    .line 340
    :cond_12
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p1, :cond_13

    const-string v0, "floatingActionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    return-void
.end method

.method private final refreshUserData()V
    .locals 4

    .line 496
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fillAdapterWithData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Float;)V

    .line 500
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_2

    const-string v1, "rocketAPI"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->getRocketRoubles()Lrx/Observable;

    move-result-object v0

    .line 501
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 502
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 503
    new-instance v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$refreshUserData$1;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketSubscription:Lrx/Subscription;

    return-void
.end method

.method private final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method

.method private final setupToolbar()V
    .locals 2

    .line 229
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "realToolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 230
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 233
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->setupToolbarSizes()V

    return-void
.end method

.method private final setupToolbarSizes()V
    .locals 4

    .line 237
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarHeight:I

    .line 239
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarHeight:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 240
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1

    const-string v1, "realToolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarHeight:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)I

    .line 242
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_2

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v2, :cond_3

    const-string v3, "realToolbar"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 246
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbarHeight:I

    .line 248
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_4

    const-string v1, "appBarLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 249
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_5

    const-string v2, "appBarLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 252
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    if-nez v1, :cond_6

    const-string v2, "rocketRoubleModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->setHeaderHeight(I)V

    return-void
.end method

.method private final showBalance()V
    .locals 6

    .line 209
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->balance:D

    .line 215
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    if-nez v2, :cond_1

    const-string v3, "rocketRoubleModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    double-to-int v0, v0

    int-to-double v0, v0

    .line 216
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v2, :cond_3

    const-string v3, "moneyFormatter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const-string v3, ""

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    if-nez v4, :cond_4

    const-string v5, "rocketRoubleModel"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyMode()Z

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    if-nez v3, :cond_5

    const-string v4, "money"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v2, :cond_8

    .line 220
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v3, :cond_6

    const-string v4, "authorization"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v3

    const-string v4, "userData"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8043
    sget-object v4, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 9029
    invoke-virtual {v3}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v3

    .line 8043
    invoke-virtual {v4, v3}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v3

    .line 8011
    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v3

    double-to-int v4, v0

    .line 220
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v3, :cond_7

    const-string v4, "rocketMoney"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_8
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v2, :cond_9

    const-string v3, "moneyFormatter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    sget-object v3, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 9105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v3

    .line 224
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    if-nez v4, :cond_a

    const-string v5, "rocketRoubleModel"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v4}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->isFullMoneyMode()Z

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v1, :cond_b

    const-string v2, "rocketTitle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showVideo()V
    .locals 2

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->videoView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    const-string v1, "videoView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private final updateToolbarPosition(I)V
    .locals 2

    .line 293
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbarHeight:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 297
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_1

    const-string v1, "realToolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 298
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbarHeight:I

    if-lt v1, v0, :cond_2

    int-to-float p1, v0

    .line 302
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_3

    const-string v1, "realToolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final exitReveal$App_prodRelease(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationX:I

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_0

    const-string v2, "floatingActionButton"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_1

    const-string v3, "floatingActionButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 414
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationY:F

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_2

    const-string v3, "floatingActionButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v3, :cond_3

    const-string v4, "floatingActionButton"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 420
    invoke-static {p1, v0, v1, v2, v3}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    .line 423
    new-instance v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$exitReveal$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$exitReveal$1;-><init>(Landroid/view/View;)V

    check-cast v1, Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-virtual {v0, v1}, Lio/codetail/animation/SupportAnimator;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    .line 430
    invoke-virtual {v0}, Lio/codetail/animation/SupportAnimator;->start()V

    return-void
.end method

.method public final getAppBarLayout()Landroid/widget/FrameLayout;
    .locals 2

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const-string v1, "appBarLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCardOverlay()Landroid/view/View;
    .locals 2

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->cardOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "cardOverlay"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFeedView()Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
    .locals 2

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "feedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFloatingActionButton()Landroid/support/design/widget/FloatingActionButton;
    .locals 2

    .line 61
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_0

    const-string v1, "floatingActionButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getHeaderOverlay()Landroid/view/View;
    .locals 2

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->headerOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "headerOverlay"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMoney()Lru/rocketbank/core/widgets/RocketAutofitTextView;
    .locals 2

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    if-nez v0, :cond_0

    const-string v1, "money"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRealToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "realToolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketMoney()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 2

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_0

    const-string v1, "rocketMoney"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketTitle()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 2

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_0

    const-string v1, "rocketTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 2

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string v1, "swipeRefreshLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getVideoView()Landroid/view/TextureView;
    .locals 2

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->videoView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    const-string v1, "videoView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationX:I

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v1, :cond_0

    const-string v2, "floatingActionButton"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_1

    const-string v3, "floatingActionButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 346
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabTranslationY:F

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v2, :cond_2

    const-string v3, "floatingActionButton"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez v3, :cond_3

    const-string v4, "floatingActionButton"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 347
    sget-object v2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity;->Companion:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "v.context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0, v1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRubleInfoActivity$Companion;->startActivity(Landroid/content/Context;ZII)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0c00f7

    .line 94
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903db

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f0903d8

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f09005a

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0902ca

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090265

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p2, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const p2, 0x7f0902f6

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f090172

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p2, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const p2, 0x7f090170

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.design.widget.FloatingActionButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const p2, 0x7f0900c7

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.card_overlay)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->cardOverlay:Landroid/view/View;

    const p2, 0x7f0901b5

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.header_overlay)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->headerOverlay:Landroid/view/View;

    const p2, 0x7f09036b

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.widget.SwipeRefreshLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const p2, 0x7f090408

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.TextureView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->videoView:Landroid/view/TextureView;

    .line 110
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_a

    const-string v1, "appBarLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p2, p3, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;-><init>(ZLandroid/widget/FrameLayout;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07015f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->paralaxSize:I

    .line 113
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700de

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->flexibleSpaceImageHeight:I

    .line 114
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700df

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->flexibleSpaceShowFabOffset:I

    .line 115
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700d6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->fabMargin:I

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public final onEvent(Lru/rocketbank/core/manager/FeedManager$FeedRefreshIsNeeded;)V
    .locals 1

    const-string v0, "refreshIsNeeded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->refreshUserData()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->unsubscribe(Lrx/Subscription;)V

    .line 175
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 196
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->userModel:Lru/rocketbank/core/model/UserModel;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_1

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    const-string v2, "userData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6043
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 7029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 6043
    invoke-virtual {v2, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    .line 6013
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getMenu()I

    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 201
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->showVideo()V

    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 4

    const/4 p2, 0x0

    if-gez p1, :cond_0

    move p1, p2

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int p3, v0

    .line 261
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->paralaxSize:I

    if-le p3, v0, :cond_1

    .line 262
    iget p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->paralaxSize:I

    .line 265
    :cond_1
    iget v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->paralaxSize:I

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x43000000    # 128.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    .line 270
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->headerOverlay:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v2, "headerOverlay"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 271
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    const-string v1, "appBarLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 273
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    if-nez p3, :cond_4

    const-string v0, "rocketRoubleModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;->getHeaderHeight()I

    move-result p3

    sub-int/2addr p3, p1

    if-gez p3, :cond_5

    goto :goto_0

    :cond_5
    move p2, p3

    .line 278
    :goto_0
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->cardOverlay:Landroid/view/View;

    if-nez p3, :cond_6

    const-string v0, "cardOverlay"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 280
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->updateToolbarPosition(I)V

    .line 281
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->moveFloatingButton(I)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p2, "surfaceTexture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 357
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    const-string p3, "mediaPlayer"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const p1, 0x7f10006b

    .line 359
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getRawPath(I)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 362
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p3, :cond_1

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p3, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 364
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_2

    const-string p3, "mediaPlayer"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 365
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    const-string p2, "mediaPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 366
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_4

    const-string p2, "mediaPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 367
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_5

    const-string p2, "mediaPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 369
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 380
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1

    const-string v0, "mediaPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "surface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 181
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 182
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getMiles()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->balance:D

    .line 183
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->showBalance()V

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 188
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_1

    const-string v0, "rocketMoney"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_2

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const-string v1, "userData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 3029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 2043
    invoke-virtual {v1, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 2013
    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Cobrand;->getMenu()I

    move-result v0

    .line 188
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 189
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_3

    const-string v0, "toolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_4

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v0

    const-string v1, "userData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4043
    sget-object v1, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 5029
    invoke-virtual {v0}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v0

    .line 4043
    invoke-virtual {v1, v0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    .line 4013
    invoke-virtual {v0}, Lru/rocketbank/core/model/enums/Cobrand;->getMenu()I

    move-result v0

    .line 189
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 191
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->refreshUserData()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 124
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 126
    new-instance p1, Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    .line 128
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 129
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    if-nez p1, :cond_1

    const-string p2, "currencyManager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_3

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authorization"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v1, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v1, p2, v0, p1}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 p1, 0x1

    .line 1044
    invoke-virtual {v1, p1}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 129
    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 131
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p2, :cond_4

    const-string v0, "realToolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    if-nez p2, :cond_8

    .line 134
    new-instance p2, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_5

    const-string v1, "feedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->barChartAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;

    if-nez v1, :cond_6

    const-string v2, "barChartAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleModel:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;

    if-nez v2, :cond_7

    const-string v3, "rocketRoubleModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p2, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/fragments/rocketrouble/BarChartAdapter;Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleModel;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    .line 137
    :cond_8
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p2, :cond_9

    const-string v0, "feedView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-nez p2, :cond_b

    .line 138
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_a

    const-string v1, "feedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    :cond_b
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p2, :cond_c

    const-string v0, "feedView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketRoubleAdapter:Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p2, :cond_d

    const-string v0, "feedView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    move-object v0, p0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {p2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 144
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p2, :cond_e

    const-string v0, "feedView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setVerticalScrollbarPosition(I)V

    .line 146
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->setupToolbar()V

    .line 147
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p2, :cond_f

    const-string v1, "floatingActionButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 149
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    if-nez p2, :cond_10

    const-string v1, "money"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    new-instance v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez p2, :cond_11

    const-string v1, "swipeRefreshLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    new-instance v1, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment$onViewCreated$2;-><init>(Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;)V

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 156
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-nez p2, :cond_12

    const-string v1, "floatingActionButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p2, :cond_13

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p2, :cond_14

    const-string v1, "realToolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->getNavigationClick()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p2, :cond_15

    const-string v1, "realToolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    iget v1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 162
    invoke-virtual {p0, v0, p1, v0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->onScrollChanged(IZZ)V

    return-void
.end method

.method public final setAppBarLayout(Landroid/widget/FrameLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->appBarLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setCardOverlay(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->cardOverlay:Landroid/view/View;

    return-void
.end method

.method public final setFeedView(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->feedView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    return-void
.end method

.method public final setFloatingActionButton(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    return-void
.end method

.method public final setHeaderOverlay(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->headerOverlay:Landroid/view/View;

    return-void
.end method

.method public final setMoney(Lru/rocketbank/core/widgets/RocketAutofitTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->money:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    return-void
.end method

.method public final setRealToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->realToolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public final setRocketMoney(Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketMoney:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method public final setRocketTitle(Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->rocketTitle:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method public final setSwipeRefreshLayout(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-void
.end method

.method public final setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public final setVideoView(Landroid/view/TextureView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleFragment;->videoView:Landroid/view/TextureView;

    return-void
.end method
