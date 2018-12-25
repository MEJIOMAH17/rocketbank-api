.class Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$100(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
