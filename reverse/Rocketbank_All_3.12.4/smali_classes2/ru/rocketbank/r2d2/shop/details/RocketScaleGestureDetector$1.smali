.class Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RocketScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$1;->this$0:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 399
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$1;->this$0:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->access$002(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;F)F

    .line 400
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$1;->this$0:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->access$102(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;F)F

    .line 401
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$1;->this$0:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->access$202(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;I)I

    return v0
.end method
