.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.kt"


# direct methods
.method public static final amountAnimation(Lru/rocketbank/core/widgets/RocketTextView;II)Landroid/animation/ValueAnimator;
    .locals 5

    const-string v0, "textView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lru/rocketbank/core/manager/CurrencyManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/CurrencyManager;-><init>()V

    .line 20
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v2

    invoke-interface {v2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authorization"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v3, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v3, v1, v2, v0}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 v1, 0x1

    .line 1044
    invoke-virtual {v3, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 21
    new-instance v2, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;

    invoke-direct {v2, v0, v3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$format$1;-><init>(Lru/rocketbank/core/manager/CurrencyManager;Lru/rocketbank/core/utils/MoneyFormatter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 28
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    .line 29
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 30
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast p1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x12c

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    new-instance p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$1;

    invoke-direct {p1, p0, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsUtils$amountAnimation$1;-><init>(Lru/rocketbank/core/widgets/RocketTextView;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method
