.class public final Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3$onStateChanged$2;
.super Ljava/lang/Object;
.source "RefillCashFragment.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;->onStateChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fab:Landroid/support/design/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3$onStateChanged$2;->$fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3$onStateChanged$2;->$fab:Landroid/support/design/widget/FloatingActionButton;

    const-string v0, "fab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setClickable(Z)V

    return-void
.end method
