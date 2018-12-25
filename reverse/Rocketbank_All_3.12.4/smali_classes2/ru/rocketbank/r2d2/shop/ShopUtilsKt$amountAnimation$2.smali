.class public final Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;
.super Landroid/animation/ValueAnimator;
.source "ShopUtils.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/ShopUtilsKt;->amountAnimation(Lru/rocketbank/core/widgets/RocketTextView;DD)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $authorization:Lru/rocketbank/core/user/Authorization;

.field final synthetic $end:D

.field final synthetic $format:Lkotlin/jvm/functions/Function1;

.field final synthetic $textView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketTextView;Lkotlin/jvm/functions/Function1;DLru/rocketbank/core/user/Authorization;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$textView:Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$format:Lkotlin/jvm/functions/Function1;

    iput-wide p3, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$end:D

    iput-object p5, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$authorization:Lru/rocketbank/core/user/Authorization;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$textView:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$format:Lkotlin/jvm/functions/Function1;

    iget-wide v2, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$end:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$textView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "textView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v2

    const-string v3, "userData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v2}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-virtual {v3, v2}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v2

    .line 1011
    invoke-virtual {v2}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v2

    .line 100
    iget-wide v3, p0, Lru/rocketbank/r2d2/shop/ShopUtilsKt$amountAnimation$2;->$end:D

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
