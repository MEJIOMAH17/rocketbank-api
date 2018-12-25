.class final Lio/codetail/animation/SupportAnimatorImpl;
.super Lio/codetail/animation/SupportAnimator;
.source "SupportAnimatorImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field mAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/animation/Animator;Lio/codetail/animation/RevealAnimator;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Lio/codetail/animation/SupportAnimator;-><init>(Lio/codetail/animation/RevealAnimator;)V

    .line 17
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final addListener(Lio/codetail/animation/SupportAnimator$AnimatorListener;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v1, Lio/codetail/animation/SupportAnimatorImpl$1;

    invoke-direct {v1, p0, p1}, Lio/codetail/animation/SupportAnimatorImpl$1;-><init>(Lio/codetail/animation/SupportAnimatorImpl;Lio/codetail/animation/SupportAnimator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 99
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final end()V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public final getDuration()J
    .locals 2

    .line 132
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getStartDelay()J
    .locals 2

    .line 115
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setDuration(J)Landroid/animation/Animator;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    return-object p0
.end method

.method public final setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-void
.end method

.method public final setStartDelay(J)V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_0
    return-void
.end method

.method public final setupEndValues()V
    .locals 1

    .line 149
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/animation/Animator;->setupEndValues()V

    :cond_0
    return-void
.end method

.method public final setupStartValues()V
    .locals 1

    .line 141
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/animation/Animator;->setupStartValues()V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 1

    .line 33
    iget-object v0, p0, Lio/codetail/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
