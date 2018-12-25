.class Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


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

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 265
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 268
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$300(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {v0}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$100(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {v1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$200(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 270
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$100(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 271
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$100(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 272
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->val$originalHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->this$0:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    invoke-static {p1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;->access$100(Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
