.class public abstract Lio/codetail/animation/SupportAnimator;
.super Landroid/animation/Animator;
.source "SupportAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/codetail/animation/SupportAnimator$SimpleAnimatorListener;,
        Lio/codetail/animation/SupportAnimator$AnimatorListener;
    }
.end annotation


# instance fields
.field mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/codetail/animation/RevealAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/codetail/animation/RevealAnimator;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/codetail/animation/SupportAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public abstract addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V
.end method

.method public abstract cancel()V
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public abstract isRunning()Z
.end method

.method public final reverse()Lio/codetail/animation/SupportAnimator;
    .locals 2

    .line 113
    invoke-virtual {p0}, Lio/codetail/animation/SupportAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 117
    :cond_0
    iget-object v0, p0, Lio/codetail/animation/SupportAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/codetail/animation/RevealAnimator;

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Lio/codetail/animation/RevealAnimator;->startReverseAnimation()Lio/codetail/animation/SupportAnimator;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public setupEndValues()V
    .locals 0

    return-void
.end method

.method public setupStartValues()V
    .locals 0

    return-void
.end method

.method public abstract start()V
.end method
