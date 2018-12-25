.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 263
    check-cast p1, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->invoke(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z
    .locals 6

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 302
    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 303
    iget-object v2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-static {v2}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->access$getLastFocusX$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)F

    move-result v2

    sub-float v2, v0, v2

    .line 304
    iget-object v3, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-static {v3}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->access$getLastFocusY$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;)F

    move-result v3

    sub-float v3, v1, v3

    .line 306
    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v4, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float v5, v4, p1

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move p1, v4

    .line 308
    :goto_0
    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleX(F)V

    .line 309
    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleY(F)V

    .line 311
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object p1

    iget-object v4, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setX(F)V

    .line 312
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->getChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    .line 314
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->access$setLastFocusX$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;F)V

    .line 315
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener$onScaleBegin$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;->access$setLastFocusY$p(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$ImagePinchListener;F)V

    const/4 p1, 0x1

    return p1
.end method
