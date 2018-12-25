.class Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$1;
.super Lio/codetail/animation/SupportAnimator$SimpleAnimatorListener;
.source "CloseDepositFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;->exitReveal(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;Landroid/view/View;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lio/codetail/animation/SupportAnimator$SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/CloseDepositFragment$1;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
