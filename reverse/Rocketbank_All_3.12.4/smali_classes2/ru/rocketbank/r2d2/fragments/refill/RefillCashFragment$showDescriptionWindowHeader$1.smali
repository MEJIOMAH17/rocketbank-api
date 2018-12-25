.class public final Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;
.super Ljava/lang/Object;
.source "RefillCashFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->showDescriptionWindowHeader(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/widget/LinearLayout;

.field final synthetic $wasShowing:Z

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;Landroid/widget/LinearLayout;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Z)V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->$view:Landroid/widget/LinearLayout;

    iput-boolean p3, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->$wasShowing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 294
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->$view:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->$view:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->$wasShowing:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getBehavior$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 299
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getCurrentHeight$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->runAnimation(II)V

    goto :goto_1

    .line 301
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getBehavior$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 302
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getBehavior$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 303
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getCurrentHeight$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->runAnimationButton(II)V

    .line 305
    :goto_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$showDescriptionWindowHeader$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v1, v0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$setCurrentHeight$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;I)V

    return-void
.end method
