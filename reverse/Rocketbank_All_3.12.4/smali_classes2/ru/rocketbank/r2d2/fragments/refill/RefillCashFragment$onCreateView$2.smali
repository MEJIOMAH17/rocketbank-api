.class public final Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "RefillCashFragment.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

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

    .line 167
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getBinding$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const-string v0, "binding.fab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setClickable(Z)V

    return-void
.end method
