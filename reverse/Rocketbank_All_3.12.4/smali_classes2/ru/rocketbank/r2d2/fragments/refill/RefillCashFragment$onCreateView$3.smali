.class public final Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "RefillCashFragment.kt"


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

    .line 171
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSlide(Landroid/view/View;F)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget-object p1, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Slide offset: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 4

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getBinding$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    const-wide/16 v0, 0x12c

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 176
    :pswitch_0
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 177
    sget-object v2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STATE_HIDDEN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 179
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 182
    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3$onStateChanged$1;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3$onStateChanged$1;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 197
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getCurrentHeight$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->runAnimationButton(II)V

    goto :goto_0

    .line 201
    :pswitch_1
    sget-object v2, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STATE_? "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$getFabParams$p(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v2

    const v3, 0x800035

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 203
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 204
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 206
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 207
    new-instance v1, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3$onStateChanged$2;

    invoke-direct {v1, p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$3$onStateChanged$2;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 224
    :goto_0
    sget-object p1, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStateChanged: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
