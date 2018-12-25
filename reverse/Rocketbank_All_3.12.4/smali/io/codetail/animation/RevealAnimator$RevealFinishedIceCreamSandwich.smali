.class public final Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codetail/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealFinishedIceCreamSandwich"
.end annotation


# instance fields
.field mFeaturedLayerType:I

.field mLayerType:I

.field mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/codetail/animation/RevealAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/codetail/animation/RevealAnimator;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    .line 105
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    iput p1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    const/4 p1, 0x1

    .line 106
    iput p1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mFeaturedLayerType:I

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 118
    iget-object p1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/codetail/animation/RevealAnimator;

    .line 119
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    invoke-interface {p1}, Lio/codetail/animation/RevealAnimator;->onRevealAnimationCancel()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 125
    iget-object p1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/codetail/animation/RevealAnimator;

    .line 126
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 127
    invoke-interface {p1}, Lio/codetail/animation/RevealAnimator;->onRevealAnimationEnd()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 111
    iget-object p1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/codetail/animation/RevealAnimator;

    .line 112
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lio/codetail/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mFeaturedLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 113
    invoke-interface {p1}, Lio/codetail/animation/RevealAnimator;->onRevealAnimationStart()V

    return-void
.end method
