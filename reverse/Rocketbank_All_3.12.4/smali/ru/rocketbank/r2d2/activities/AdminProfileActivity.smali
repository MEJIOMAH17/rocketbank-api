.class public final Lru/rocketbank/r2d2/activities/AdminProfileActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "AdminProfileActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/AdminProfileActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdminProfileActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdminProfileActivity.kt\nru/rocketbank/r2d2/activities/AdminProfileActivity\n*L\n1#1,213:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/AdminProfileActivity$Companion;

.field private static final KEY_PERMALINK:Ljava/lang/String; = "permalink"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private agentSubscription:Lrx/Subscription;

.field private height:F

.field private isScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->Companion:Lru/rocketbank/r2d2/activities/AdminProfileActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHeight$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)F
    .locals 0

    .line 35
    iget p0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->height:F

    return p0
.end method

.method public static final synthetic access$getKEY_PERMALINK$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->KEY_PERMALINK:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isScroll$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->isScroll:Z

    return p0
.end method

.method public static final synthetic access$setHeight$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;F)V
    .locals 0

    .line 35
    iput p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->height:F

    return-void
.end method

.method public static final synthetic access$setScroll$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->isScroll:Z

    return-void
.end method

.method public static final synthetic access$setToolbar(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/support/v7/widget/Toolbar;F)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->setToolbar(Landroid/support/v7/widget/Toolbar;F)V

    return-void
.end method

.method public static final synthetic access$showAgent(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Lru/rocketbank/core/network/model/AgentResponse;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->showAgent(Lru/rocketbank/core/network/model/AgentResponse;)V

    return-void
.end method

.method private final setToolbar(Landroid/support/v7/widget/Toolbar;F)V
    .locals 2

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060200

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    .line 2054
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v1, 0xff

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 199
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    return-void
.end method

.method private final showAgent(Lru/rocketbank/core/network/model/AgentResponse;)V
    .locals 14

    const v0, 0x7f090065

    .line 144
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090352

    .line 145
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0902ba

    .line 146
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v3, 0x7f0901ea

    .line 147
    invoke-virtual {p0, v3}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09026e

    .line 148
    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0903cb

    .line 149
    invoke-virtual {p0, v5}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090286

    .line 150
    invoke-virtual {p0, v6}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    const v7, 0x7f0903d8

    .line 152
    invoke-virtual {p0, v7}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    .line 154
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/AgentResponse;->getAgent()Lru/rocketbank/core/model/Agent;

    move-result-object p1

    const/4 v8, 0x0

    if-eqz p1, :cond_6

    .line 156
    move-object v9, p0

    check-cast v9, Landroid/content/Context;

    const v10, 0x7f060024

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 157
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v9, 0x7f0901d6

    .line 159
    invoke-virtual {p0, v9}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const-string v11, "imageProgressBar"

    .line 160
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    sget-object v11, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/Agent;->getAvatarUrl()Ljava/lang/String;

    move-result-object v12

    check-cast v10, Landroid/graphics/drawable/Drawable;

    new-instance v13, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;

    invoke-direct {v13, v0, v9}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    check-cast v13, Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;

    invoke-virtual {v11, v0, v12, v10, v13}, Lru/rocketbank/core/utils/ImageHelper;->loadWithListener(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;)V

    if-nez v3, :cond_1

    .line 173
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/Agent;->getInfo()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_2

    .line 174
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/Agent;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1}, Lru/rocketbank/core/model/Agent;->getRate()F

    move-result v0

    .line 177
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    if-nez v1, :cond_3

    .line 178
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/high16 v9, 0x41000000    # 8.0f

    float-to-int v10, v0

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x41980000    # 19.0f

    mul-float/2addr v10, v0

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    float-to-int v0, v9

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    if-nez v5, :cond_4

    .line 181
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u0412 \u0420\u043e\u043a\u0435\u0442\u0431\u0430\u043d\u043a\u0435 \u0443\u0436\u0435 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/Agent;->getTime()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-nez v6, :cond_7

    .line 184
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v6}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$2;-><init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    if-nez v2, :cond_8

    .line 190
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 192
    new-instance p1, Landroid/animation/FloatEvaluator;

    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    check-cast p1, Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v8

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v0

    .line 191
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 193
    new-instance v0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$3;

    invoke-direct {v0, p0, v7}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$3;-><init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/support/v7/widget/Toolbar;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final getStatusBarHeight()I
    .locals 4

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 60
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 62
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->setContentView(I)V

    const p1, 0x7f090065

    .line 64
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f090286

    .line 65
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    .line 67
    new-instance v1, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    .line 68
    invoke-virtual {v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 69
    invoke-virtual {v1, v3}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 71
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    .line 1135
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 1136
    :cond_0
    instance-of v1, v3, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v1, :cond_1

    .line 1137
    move-object v1, v3

    check-cast v1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {v1, v2}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTint(I)V

    :cond_1
    :goto_0
    const v1, 0x7f0903d8

    .line 78
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    if-nez v1, :cond_2

    .line 79
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 80
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V

    .line 83
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 86
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const v2, 0x7f110052

    .line 88
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->setTitle(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_4

    .line 90
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->setAlpha(F)V

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->setClipToPadding(Z)V

    .line 92
    new-instance v3, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$2;

    invoke-direct {v3, p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)V

    check-cast v3, Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    invoke-static {}, Lru/rocketbank/r2d2/helpers/UIHelper;->getBottom()I

    move-result v3

    invoke-virtual {v0, v2, v2, v2, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->setPadding(IIII)V

    .line 95
    new-instance v3, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;

    invoke-direct {v3, p0, p1, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;-><init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/widget/ImageView;Landroid/support/v7/widget/Toolbar;)V

    check-cast v3, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    .line 94
    invoke-virtual {v0, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 109
    invoke-virtual {v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 110
    new-instance v2, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;

    invoke-direct {v2, p0, p1, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;-><init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/widget/ImageView;Landroid/support/v7/widget/Toolbar;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->agentSubscription:Lrx/Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->agentSubscription:Lrx/Subscription;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->agentSubscription:Lrx/Subscription;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 140
    :cond_2
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 115
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 117
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->KEY_PERMALINK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->getAgents(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onResume$1;-><init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->agentSubscription:Lrx/Subscription;

    return-void
.end method

.method protected final setToolbarSize(Landroid/support/v7/widget/Toolbar;I)V
    .locals 2

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 43
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
