.class public final Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;
.super Ljava/lang/Object;
.source "SwitchCard.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/SwitchCard;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/SwitchCard;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/SwitchCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;->this$0:Lru/rocketbank/r2d2/widgets/SwitchCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;->this$0:Lru/rocketbank/r2d2/widgets/SwitchCard;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating$App_prodRelease()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;->this$0:Lru/rocketbank/r2d2/widgets/SwitchCard;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating$App_prodRelease()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;->this$0:Lru/rocketbank/r2d2/widgets/SwitchCard;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;->this$0:Lru/rocketbank/r2d2/widgets/SwitchCard;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/SwitchCard;->setChecked(Z)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/SwitchCard$onTouchEvent$1;->this$0:Lru/rocketbank/r2d2/widgets/SwitchCard;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/SwitchCard;->isAnimating$App_prodRelease()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
