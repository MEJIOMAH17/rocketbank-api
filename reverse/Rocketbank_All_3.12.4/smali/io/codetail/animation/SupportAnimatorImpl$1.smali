.class final Lio/codetail/animation/SupportAnimatorImpl$1;
.super Ljava/lang/Object;
.source "SupportAnimatorImpl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/codetail/animation/SupportAnimatorImpl;->addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/codetail/animation/SupportAnimatorImpl;

.field final synthetic val$listener:Lio/codetail/animation/SupportAnimator$AnimatorListener;


# direct methods
.method constructor <init>(Lio/codetail/animation/SupportAnimatorImpl;Lio/codetail/animation/SupportAnimator$AnimatorListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lio/codetail/animation/SupportAnimatorImpl$1;->this$0:Lio/codetail/animation/SupportAnimatorImpl;

    iput-object p2, p0, Lio/codetail/animation/SupportAnimatorImpl$1;->val$listener:Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lio/codetail/animation/SupportAnimatorImpl$1;->val$listener:Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-interface {p1}, Lio/codetail/animation/SupportAnimator$AnimatorListener;->onAnimationCancel()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lio/codetail/animation/SupportAnimatorImpl$1;->val$listener:Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-interface {p1}, Lio/codetail/animation/SupportAnimator$AnimatorListener;->onAnimationEnd()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lio/codetail/animation/SupportAnimatorImpl$1;->val$listener:Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-interface {p1}, Lio/codetail/animation/SupportAnimator$AnimatorListener;->onAnimationRepeat()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lio/codetail/animation/SupportAnimatorImpl$1;->val$listener:Lio/codetail/animation/SupportAnimator$AnimatorListener;

    invoke-interface {p1}, Lio/codetail/animation/SupportAnimator$AnimatorListener;->onAnimationStart()V

    return-void
.end method
