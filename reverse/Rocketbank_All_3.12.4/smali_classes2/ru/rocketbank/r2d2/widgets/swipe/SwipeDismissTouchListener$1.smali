.class Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$1;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$1;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$000(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)V

    return-void
.end method
