.class public final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->invoke(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 337
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 338
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 339
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getLocationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 340
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getLocationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 341
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getZoomView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 342
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getParent()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    sget v0, Lru/rocketbank/r2d2/R$id;->observableScrollView:I

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->setScrollingEnabled(Z)V

    .line 344
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    iget-object p1, p1, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->access$showBlockingView(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Z)V

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
