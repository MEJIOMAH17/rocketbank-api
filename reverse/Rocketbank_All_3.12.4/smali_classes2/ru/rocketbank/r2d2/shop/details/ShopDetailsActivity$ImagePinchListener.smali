.class public final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImagePinchListener"
.end annotation


# instance fields
.field private final child:Landroid/view/View;

.field private lastFocusX:F

.field private lastFocusY:F

.field private locationX:F

.field private locationY:F

.field private final parent:Landroid/view/ViewGroup;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

.field private windowLocationX:F

.field private windowLocationY:F

.field private final zoomView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    .line 264
    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p2, "window"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string p2, "window.decorView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->zoomView:Landroid/view/ViewGroup;

    .line 266
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->parent:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$getLastFocusX$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)F
    .locals 0

    .line 263
    iget p0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->lastFocusX:F

    return p0
.end method

.method public static final synthetic access$getLastFocusY$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)F
    .locals 0

    .line 263
    iget p0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->lastFocusY:F

    return p0
.end method

.method public static final synthetic access$setLastFocusX$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;F)V
    .locals 0

    .line 263
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->lastFocusX:F

    return-void
.end method

.method public static final synthetic access$setLastFocusY$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;F)V
    .locals 0

    .line 263
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->lastFocusY:F

    return-void
.end method


# virtual methods
.method public final getChild()Landroid/view/View;
    .locals 1

    .line 263
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    return-object v0
.end method

.method public final getLocationX()F
    .locals 1

    .line 272
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->locationX:F

    return v0
.end method

.method public final getLocationY()F
    .locals 1

    .line 273
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->locationY:F

    return v0
.end method

.method public final getParent()Landroid/view/ViewGroup;
    .locals 1

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->parent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getWindowLocationX()F
    .locals 1

    .line 270
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->windowLocationX:F

    return v0
.end method

.method public final getWindowLocationY()F
    .locals 1

    .line 271
    iget v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->windowLocationY:F

    return v0
.end method

.method public final getZoomView()Landroid/view/ViewGroup;
    .locals 1

    .line 264
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->zoomView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final onScale(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleBegin(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z
    .locals 6

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->parent:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 279
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->access$showBlockingView(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;Z)V

    .line 280
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    sget v3, Lru/rocketbank/r2d2/R$id;->observableScrollView:I

    invoke-virtual {v0, v3}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/shop/details/GestureLockableObservableScrollView;->setScrollingEnabled(Z)V

    const/4 v0, 0x2

    .line 281
    new-array v0, v0, [I

    .line 282
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 283
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 284
    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 286
    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->getFocusX()F

    move-result v5

    iput v5, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->lastFocusX:F

    .line 287
    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->getFocusY()F

    move-result v5

    iput v5, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->lastFocusY:F

    .line 289
    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->windowLocationX:F

    .line 290
    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->windowLocationY:F

    .line 291
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->locationX:F

    .line 292
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->locationY:F

    .line 294
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->zoomView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 298
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->child:Landroid/view/View;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 300
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    new-instance v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->setOnScale(Lkotlin/jvm/functions/Function1;)V

    .line 319
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    new-instance v0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$2;-><init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->setOnScaleEnd(Lkotlin/jvm/functions/Function1;)V

    return v1
.end method

.method public final onScaleEnd(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public final setLocationX(F)V
    .locals 0

    .line 272
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->locationX:F

    return-void
.end method

.method public final setLocationY(F)V
    .locals 0

    .line 273
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->locationY:F

    return-void
.end method

.method public final setWindowLocationX(F)V
    .locals 0

    .line 270
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->windowLocationX:F

    return-void
.end method

.method public final setWindowLocationY(F)V
    .locals 0

    .line 271
    iput p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->windowLocationY:F

    return-void
.end method
