.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->onScaleBegin(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 263
    check-cast p1, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->invoke(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V
    .locals 9

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->setOnScale(Lkotlin/jvm/functions/Function1;)V

    .line 321
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->setOnScaleEnd(Lkotlin/jvm/functions/Function1;)V

    .line 322
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-wide/16 v1, 0x1f4

    .line 324
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 325
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 326
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object p1

    const-string v1, "x"

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getWindowLocationX()F

    move-result v4

    aput v4, v3, v0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 327
    iget-object v1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v1

    const-string v3, "y"

    new-array v4, v2, [F

    iget-object v6, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v4, v5

    iget-object v6, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v6}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getWindowLocationY()F

    move-result v6

    aput v6, v4, v0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 328
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v3

    const-string v4, "scaleX"

    new-array v6, v2, [F

    iget-object v7, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v7}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 329
    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v4

    const-string v6, "scaleY"

    new-array v2, v2, [F

    iget-object v8, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v8}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v2, v5

    aput v7, v2, v0

    invoke-static {v4, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 330
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 331
    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 332
    new-instance p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
