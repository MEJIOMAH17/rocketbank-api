.class final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$imageViews$1$2;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->showItem(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$imageViews$1$2;->$scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 149
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$showItem$imageViews$1$2;->$scaleDetector:Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
